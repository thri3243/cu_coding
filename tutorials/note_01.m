% Tad Riley
% Date: Nov 10, 2017
% Last Edit:
% Source: notes01

clc; clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First, declare all of our parameters

p = 2;                                      % Polynomial of order the streamfunction
num_elem_1D = 32;                           % Number of 1D elements
h = 1/num_elem_1D;                          % Size of the mesh
num_func_1D = num_elem_1D +p;               % Number of 1D functions
size_knotvec_1D = num_elem_1D + 2*p + 1;    % Size of 1D knot vector
C = 5*p;
Re = 400;
itr_max = 10;
tol = 1e-3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Next, create our 1D knot vector

knot_vec = zeros(size_knotvec_1D,1);

for i = 1:num_elem_1D
    knot_vec(i+p+1) = knot_vec(i+p) +h;
end

for j = 1:p
    knot_vec(o+p+j+1) = 1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Next, create our 1D IEN array

IEN_1D = zeros(num_elem_1D,p+1)

for i = 1:num_elem_1D
    for j = 1:(p+1)
        IEN_1D(i,j) = i +(j-1);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Next, create our diffusivity matrix 

K_diff = 1/Re * diffusivity