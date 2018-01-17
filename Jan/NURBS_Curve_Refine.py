# Tad Riley
# Jan 17, 2018
# IGA HW01
# Function to refine a NURBS curve
#
# It should take the form:
# [new_n,new_Xi,new_P,new_w] = NURBS_Curve_Refine(d,add_Xi,p,n,Xi,P,w)
# d - spatial dimension
# add_Xi - knots to be inserted
# p - polynomial degree of the original and refined curves
# n - number of original basis functions
# Xi - Original knot vector
# P - original control points
# w - weights for the original NURBS curves

import numpy as np
from numpy import *
import scipy.linalg
import matplotlib.pyplot as plt

def bin_search(A,low,high,x):
    mid = np.ceil(low+np.absolute(high-low)/2)
    #print("xi = ", x)
    #print("Lower Bound = ", A[int(mid)])
    global sl
    if (x >= A[int(mid)]) and (x < A[int(mid+1)]):
        sl = int(mid)
        return sl
    elif x  < A[int(mid)]:
        bin_search(A,low,mid-1,x)
        sl = sl
    else:
        bin_search(A,mid+1,high,x)
        sl = sl
        return sl

def NURBS_1D(xi,i,p,n,Xi,w):
    scriptl = []
    nshp = np.zeros([len(xi),len(Xi)-1,p+1],dtype='d')

    R1 = np.zeros([len(xi),n,1])
    #R2 = np.zeros([len(xi),n,1])
    #R3 = np.zeros([len(xi),n,1])

    wsum1 = np.zeros([len(xi)])
    #wsum2 = np.zeros(len(xi))
    #wsum3 = np.zeros(len(xi))

    for q in np.arange(0,len(xi),1):
        sl  = bin_search(Xi,0,Xi[len(Xi)-1],xi[q])
        scriptl.append(sl)
        L = sl
        nshp[q,L,0] = 1
        for p in np.arange(1,p+1,1):
            for i in np.arange(0,len(Xi)-1-p,1):
                if (Xi[i+p]-Xi[i] == 0) and (Xi[i+p+1]-Xi[i+1] == 0):
                    nshp[q,i,p] = 0
                elif (Xi[i+p]-Xi[i] == 0):
                    nshp[q,i,p] = ((Xi[i+p+1]-xi[q])/(Xi[p+i+1]-Xi[i+1])) * nshp[q,i+1,p-1]
                elif (Xi[i+p+1]-Xi[i+1] == 0):
                    nshp[q,i,p] = ((xi[q]-Xi[i])/(Xi[i+p]-Xi[i])) * nshp[q,i,p-1]
                else:
                    nshp[q,i,p] =  ((Xi[i+p+1]-xi[q])/(Xi[p+i+1]-Xi[i+1])) * nshp[q,i+1,p-1] + ((xi[q]-Xi[i])/(Xi[i+p]-Xi[i])) * nshp[q,i,p-1]

    for i in np.arange(0,n):
        wsum1[:] = wsum1 + w[i]*nshp[:,i,p]
        #wsum2[:] = wsum2 + w2[i]*nshp[:,i,p]
        #wsum3[:] = wsum3 + w3[i]*nshp[:,i,p]
    for i in np.arange(0,n):
        R1[:,i,0] = (nshp[:,i,p]*w[i])/wsum1[:]
        #R2[:,i,0] = (nshp[:,i,p]*w2[i])/wsum2[:]
        #R3[:,i,0] = (nshp[:,i,p]*w3[i])/wsum3[:]
    # plt.plot(xi,R1[:,:,0])
    # plt.show()
    #plt.plot(xi,R2[:,:,0])
    #plt.show()
    #plt.plot(xi,R3[:,:,0])
    #plt.show()
    return R1[:,:,0]

def NURBS_Curve_Refine(d,add_Xi,p,n,Xi,P,w):
    add = len(add_Xi) #Number of knots to be added
    orig = len(Xi)
    m = add + orig        #Number of basis functions after knot insertion
    new_n = m
    new_Xi = np.zeros(m)
    #new_P = np.zeros(shape(P))
    new_w = np.zeros(m)

    xi = np.arange(Xi[0],Xi[len(Xi)-1],0.01)
    i = n
    RBS = np.zeros([len(xi),n,1])
    RBS[:,:,0] = NURBS_1D(xi,len(Xi)-p-1,p,n,Xi,w)

    #Construct the extended knot vector
    new_Xi = np.concatenate((Xi,add_Xi),axis=None) #This joins the knot vectors
    new_Xi = np.sort(new_Xi, axis=None) #This sorts the combined knot vector
    print("new_Xi =",new_Xi)
    print("unique vals ->", np.unique(new_Xi))
    T = np.zeros([m,orig,p+1])
    print("The size of T is ",shape(T))

    # Determine the zeroth order Refinement matrix
    #####################
    # The i,j indices for the refinement matrix need
    # altered to account for n and new_n
    ####################
    for j in np.arange(0,m,1):
        for i in np.arange(0,n-1,1): #Is the subtraction of 1 valid?
            if new_Xi[j] >= Xi[i] and new_Xi[j] < Xi[i+1]:
                T[j,i,0] = 1
    # Calculate the higher order terms of T
    for k in np.arange(1,p+1,1):
        for j in np.arange(0,m-k,1):
            for i in np.arange(0,orig-k-1,1):
                if (Xi[i+k]-Xi[i] == 0) and (Xi[i+k+1]-Xi[i+1] == 0):
                    T[j,i,k] = 0
                elif (Xi[i+k]-Xi[i] == 0):
                    T[j,i,k] = ((Xi[i+k+1]-new_Xi[j+k])/(Xi[i+k+1]-Xi[i+1])) * T[j,i+1,k-1]
                elif (Xi[i+k+1]-Xi[i+1] == 0):
                    T[j,i,k] = ((new_Xi[j+k]-Xi[i])/(Xi[i+k]-Xi[i])) * T[j,i,k-1]
                else:
                    T[j,i,k] = ((new_Xi[j+k]-Xi[i])/(Xi[i+k]-Xi[i])) * T[j,i,k-1] + ((Xi[i+k+1]-new_Xi[j+k])/(Xi[i+k+1]-Xi[i+1])) * T[j,i+1,k-1]
    # Now that the refinement matrix is known, we next need to execute the Oslo
    # algorithm to determine the refined control polygon
    Pq = np.zeros([p+1,orig,m])
    aq = np.zeros([p+1,orig,m])
    print("The size of Pq is ",shape(Pq))

    for i in np.arange(0,n,1):
        for j in np.arange(0,m,1):
            Pq[0,i,j] = P[i]

    for q in np.arange(1,p+1,1):
        for i in np.arange(0,n,1):
            for j in np.arange(0,m-q,1):
                if Xi[i+q] - Xi[i] == 0:
                    aq[q,i,j] = 0
                else:
                    aq[q,i,j] = (new_Xi[j+q] - Xi[i])/(Xi[i+q]-Xi[i])

    for q in np.arange(1,p+1,1):
        for i in np.arange(1,n+q,1):
            for j in np.arange(1,m-q,1):
                Pq[q,i,j] = (1 - aq[q,i,j]) * Pq[q-1,i-1,j] + aq[q,i,j] * Pq[q-1,i,j]

    #This loop should now provide the Refined Control Polygon
    Q = np.zeros(m)
    for j in np.arange(0,m,1):
        for q in np.arange(0,p+1,1):
            for i in np.arange(0,n+q-2,1):
                Q[j] = Q[j] + Pq[q,i,j] * T[j,i,p-q]


#########################################################################
# Problem 6
d = 1
add_Xi = np.array([0.25,0.25,0.5,0.75])
p = 2
n = 4
Xi = np.array([0,0,0,1,1,1])
w = np.ones(len(Xi))
P = np.array([0,0.25,0.5,0.75])

xi_1 = np.arange(Xi[0],Xi[len(Xi)-1],0.01)
print(np.arange(1,p+2,1))
NURBS_Curve_Refine(d,add_Xi,p,n,Xi,P,w)
