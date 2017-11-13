% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes16
% Global and persistent variables

% used persistent_test.m and trajectory_and_velocity_global.m

clear all; close all;

global g dt
g=9.81;

x_0 = input('Enter the initial horizontal position (meters): ');
y_0 = input('Enter the initial height (meters): ');
vx_0 = input('Enter the initial velocity in x-direction (m/s): ');
vy_0 = input('Enter the initial velocity in y-direction (m/s): ');
t_0 = input('Enter the initial time (seconds): ');
dt = input('Enter the desired time-step size (seconds): ');

ts = time_of_impact(y_0,vy_0,t_0);
[x,y,vx,vy,t] = trajectory_and_velocity_global(x_0,y_0,vx_0,vy_0,t_0,ts);

figure;
plot(x,y,'LineWidth',2)
xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
grid on