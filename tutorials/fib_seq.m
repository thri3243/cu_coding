% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes10
% For loop example: Fibbionacci sequence

clear

N = input('Enter a value for N: ');

while N < 1 || N ~= round(N)
    N = input('Invalid value entered. Enter a new value for N: ');
end

fibbionacci = zeros(1,N);
values = 1:N;

for j = values
    
    if j == 1 || j == 2
        fibbionacci(j) = 1;
    else
        fibbionacci(j) = fibbionacci(j-1) + fibbionacci(j-2);
    end
end

fprintf('\n %12c \t %12s \n \n', 'N', 'f(N)')
fprintf(' %12g \t %12g \n',[values;fibbionacci])