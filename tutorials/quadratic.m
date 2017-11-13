% Author: Tad Riley
% File: quadractic.m 
% Date: Nov 10, 2017
% Last Edit:
% Source: notes04
% Quadratic script

a = input('Enter a value for a: ');
b = input('Enter a value for b: ');
c = input('Enter a value for c: ');

disp(['The quadratic equation being solved is (' num2str(a) ')x^2 + (' ...
    num2str(b) ')x + (' num2str(c)  ') = 0']) %... continues code to the next line

x_1 = (-b + sqrt(b^2 - 4*a*c)) / (2*a);
x_2 = (-b - sqrt(b^2 - 4*a*c)) / (2*a);

disp(['The positive root is ' num2str(x_1)])
disp(['The negative root is ' num2str(x_2)])

fprintf(['\nThe quadratic equation being solved is (%g)x^2 + (%g)x' ...
    ' + (%g) = 0 \n'],a,b,c)

fprintf('\nThe positive root is %.4f +%.4fi \n',real(x_1),imag(x_1))
fprintf('\nThe negative root is %.4f +%.4fi \n',real(x_2),imag(x_2))