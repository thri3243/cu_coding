% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes15
% Functions in functions

function [mag] = smallest_magnitude_func(fun,a,b,num)

inc = (b-a) / num;
x_arr = a:inc:b;
y_arr = feval(fun,x_arr);

mag = [x_arr(1),y_arr(1)];

for j=2:length(x_arr)
    if abs(y_arr(j)) < abs(mag(2))
        mag = [x_arr(j), y_arr(j)];
    end
end
end
