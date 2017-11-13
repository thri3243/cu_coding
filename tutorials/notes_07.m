% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes07
% While loops

user = input('Would you like to enter a number [Y/N]: ','s');

while strcmp(user,'Y') || strcmp(user,'y')||strcmp(user,'Yes')||strcmp(user,'yes')
    x = input('Enter a number: ');
    fprintf('\nThe number entered is %g. \n',x)
    user = input('Would you like to enter another number [Y/N]: ','s');
end

n=input('Enter how many terms to be included in the summation: ','s');

while n <= 0
    n = input('Invalid number of terms. Please enter a new value: ','s')
end

sum = 0;
i = 1;

while i <= n
    sum = sum + 2^(-i);
    i = i + 1;
end

fprintf('\n Using %g terms, the summation is %g. \n',n,sum)