% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes16
% Global and persistent variables

function [x,y,vx,vy,t] = trajectory_and_velocity_global(x_0,y_0,vx_0,vy_0,t_0,ts)
global g dt

t = t_0:dt:ts;

vx = vx_0;
vy = vy_0 - g*(t-t_0);
x = x_0 + vx_0*(t-t_0);
y = y_0 + vy_0*(t-t_0) - 0.5*g*(t-t_0).^2;

end