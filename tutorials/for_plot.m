% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes09
% Tables and 2D plotting

clear
close all

x_min = input('Enter the minimum value for x: ');
x_max = input('Enter the maximum value for x: ');
dx = input('Enter the step size for x: ');

x = x_min:dx:x_max;

for j = 1:length(x)
    if x(j) >= 9
        y(j) = 15 * sqrt(4*x(j)) + 10;
    elseif x(j) >= 0
        y(j) = 10 * x(j) + 10;
    else
        y(j) = 10;
    end
end

plot(x,y,'LineWidth',2)
xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
