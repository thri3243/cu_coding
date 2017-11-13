% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes15
% Functions in functions

function sinx = sinx_tol(x,tol)

sinx = 0;
term = 0;
n = 1;

while (abs(term) > tol || n == 1)
    term = (-1)^(n-1)*1/nfact(2*n-1)*x^(2*n-1);
    sinx = sinx + term;
    
    n = n+1;
end
end