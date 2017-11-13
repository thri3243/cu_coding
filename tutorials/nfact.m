% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes15
% Functions in functions

function nf = nfact(n)

if n<0 || n ~= round(n)
    error('Input value is negative or it is not a positive integer')
else
    if n > 170
        warning('Value exceeds MATLAB capabilities. Solution is Inf.')
    end
    
    nf =1; 
    for j = 1:n
        nf = nf*j;
    end
end