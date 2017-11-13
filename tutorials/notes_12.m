% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes12
% 3D Plotting

clear; close all;

t=0:.01:10;
x = exp(-0.2*t).*cos(2*t);
y = exp(-0.2*t).*sin(2*t);

figure;
plot3(x,y,t,'LineWidth',2)
xlabel('x')
ylabel('y')
zlabel('z','FontSize',12)
grid on

x = 0:1:5; y = 0:1:5;
[x,y] = meshgrid(x,y)

x=-3:0.1:3;
y = x;
[X,Y]=meshgrid(x,y);
Z = X.*exp(-(X.^2+Y.^2));

% prints a mesh with spaces in between lines left empty
figure;
mesh(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)
zlabel('f(x,y)','FontSize',12)

% Prints a surface with meshgrid in black and surfaces in between filled
% with color
figure;
surf(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)
zlabel('f(x,y)','FontSize',12)

% Creates a plot with all lines drawn in the same direction
figure;
waterfall(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)
zlabel('f(x,y)','FontSize',12)

% Creates a contour plot
figure;
contour(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)

% Creates a contour plot with 20 contours
figure;
contour(X,Y,Z,20);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)

% Creates a contour plot with labels
figure;
p = contour(X,Y,Z);
clabel(p);              % labels the contours
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)

% See the mesh and contour plots at once
figure;
meshc(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)
zlabel('f(x,y)','FontSize',12)

% Display the 3D surface and contour plot
figure;
surfc(X,Y,Z);
xlabel('x','FontSize',12)
ylabel('y','FontSize',12)
zlabel('f(x,y)','FontSize',12)
