% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes14
% Functions in scripts

clear all; 
close all;

g = 9.81;

x_0 = input('Enter the initial horizontal position (meters): ');
y_0 = input('Enter the initial height (meters): ');
vx_0 = input('Enter the initial velocity in x-direction (m/s): ');
vy_0 = input('Enter the initial velocity in y-direction (m/s): ');
t_0 = input('Enter the initial time (seconds): ');
dt = input('Enter the desired time-step size (seconds): ');
e = input('Enter the coefficient of restitution: ');
N = input('Enter the number of bounces to simulate: ');

figure;
hold on

% Simulate N ball bounces 
for i = 1:N
    ts = time_of_impact(y_0,vy_0,t_0);
    [x,y,vx,vy,t] = trajectory_and_velocity(x_0,y_0,vx_0,vy_0,t_0,ts,dt);
    
    plot(x,y,'LineWidth',2)
    
    x_0 = x(end); y_0 = y(end); vx_0 = vx(end); vy_0 = -e*vy(end); t_0=t(end);
end

hold off
xlabel('x','FontSize',14)
ylabel('y','FontSize',14)
grid on