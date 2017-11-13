% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes14
% Functions in scripts

function [x,y,vx,vy,t] = trajectory_and_velocity(x_0,y_0,vx_0,vy_0,t_0,ts,dt)

g = 9.81;

t = t_0:dt:ts;

vx = vx_0;
vy = vy_0 - g*(t-t_0);
x = x_0 + vx_0*(t-t_0);
y = y_0 + vy_0*(t-t_0) - 0.5*g*(t-t_0).^2;

end