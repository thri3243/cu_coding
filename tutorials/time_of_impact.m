% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes14
% Functions in scripts

function [ts] = time_of_impact(y_0,vy_0,t_0)

g = 9.81;

a = -0.5*g;
b = g*t_0 + vy_0;
c = -0.5*g*t_0^2 - vy_0*t_0 + y_0;

% Solve the quadratic equation (negative root)
ts = (-b - sqrt(b^2 - 4*a*c))/(2*a);

end