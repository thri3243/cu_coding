% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes15
% Functions in functions

function [] = plot_func(fun,val1,val2,num)

inc = (val2 - val1) / num;

x = val1:inc:val2;
y = feval(fun,x);
plot(x,y)

end