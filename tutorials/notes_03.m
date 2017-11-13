% Tad Riley
% Date: Nov 10, 2017
% Last Edit:
% Source: notes03
% Building and using arrays

clc; clear all;

% Different ways to declare an array
x1 = [ 10 -5 24 ]
y1 = [-2,5,7,10,-15,0]
z1 = [6;-6]
A1 = [1,2,3;4,5,6;7,8,9]

x2 = 1:5
y2 = 5:-1:1
z2 = 0:2:9
q2 = 0:-2:8

% Using built0in fuctions to create arrays
x3 = zeros(5,5)
x4 = ones(2,6)

% Get dimensions and values from arays
sizeA1 = size(A1)
maxA1 = max(A1)
minmaxA1 = min(max(A1))

% Adding arrays together only works in dimensions agree
x5 = [1;2;3]
y5 = [4 5 6]
z5 = [7 8 9; 10 11 12; 13 14 15]

XZ5 = [x5 z5]
YZ5 = [y5;z5]

% Accessing elements of an array
A1(1,1)
A1(3,2)

% Use index location to build an array
B6(1,1) = -1; B6(1,2) = 0; B6(2,1) = 5; B6(2,2) = -2;
B6

% If values are not declared it will be filled with null values
C6(3,1) = 2; C6
C6(1,4) = -2; C6

% Modify values of an already built matrix
D6 = [1,2,3;4,5,6;7,8,9]
D6(1,1) = 0; D6
D6(2,2) = D6(1,2) + D6(2,3); D6

% Accessing sections of an array
A1(1:2,1:2)
A1(2:3,2:3)
A1(:,1:2:3) % This will get all rows and the first and third column of A1
A1(end,:) % This retrieves the last row and all columns of A1

% Performing scalar operations on matrices
x7 = 1:5;
y7 = x7 +10; y7

z7 = x7 + y7 ./ x7 + x7 .^ y7

% Multiplication with a scalar
x8 = 1:5;
y8 = 2*x8
z8 = 2.*x8
u8 = x8*2
v8 = x8.*2

% Division of a scalar by an array
x9 = 1:5;
y9 = 2./x9
% z9 = 2/x9 %This code will not work

% Division of an array by a scalar
x10 = 1:5;
y10 = x10./2
z10 = x10/2

% Exponentiation of a scalar by an array
x11 = 1:5;
y11 = 2.^x11
% z11 = 2^x

% Exponentiation of an array by a scalar
x12 = 1:5;
y12 = x12.^2
% z12 = x12^2

% Calculation of y(x) for multiple values of x
x13 = 1:5;
y13 = 2 * x13 .^ 3 + 10 ./ x13

% Using built-in functions on arrays
exp(x13) % Uses the built-in function for Euler's number
y13a = 3 * x13 ./ exp(x13) + 0.25 .^x13
z13 = cos(x13) .* log(x13) .^x13 +10 ./ sqrt(x13) -x13.^(1/3)