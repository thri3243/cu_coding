% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes07
% While loops

n=input('Enter how many terms to be included in the summation: ');

while n <= 0
    n = input('Invalid number of terms. Please enter a new value: ');
end

sum = 0;
i = 1;

while i <= n
    sum = sum + 2^(-i);
    i = i + 1;
end

fprintf('\n Using %g terms, the summation is %g. \n',n,sum)