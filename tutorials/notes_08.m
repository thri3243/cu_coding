% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes08
% Loop tasks

index = 0;
summ = 0;
prod = 1;
x_array = [];

while index < 5
    index = index + 1;
    x = 1 / index;
    x_array = [x_array,x] % storing values calculated in loop to an array 
    summ = summ + x;      % computes the sum of calculated values
    prod  = prod * x;     % computes the product of the calculated values
    
    fprintf('\n index = %g \t summ = %g \n',index,summ)
    fprintf('\n index = %g \t prod = %g \n',index,prod)
end