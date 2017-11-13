% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes09
% Tables and 2D plotting

%close all %can be used to close all plot figures / pop=ups at once

x=1:5; y = -11:-1:-15; z = 0:10000:40000;
disp('           x           y           z');
disp([x;y;z]')

fprintf('\n %8g \t %8g \t %8g\n', [x;y;z])

x = -1.23327432:0.00000001:-1.23327428; y =0:10000:40000; z = 50:50:250;
fprintf('\n %12c \t %12c \t %12c \t %12c \n','x','y','z');
fprintf('\n %12.9g \t %12.9g \t %12.9g', [x;y;z])
fprintf('\n')

x = [5,50,500,5000,50000]; y = 0:10000:40000; z= 50:50:250;
fprintf('\n %g %g %g', [x;y;z])
fprintf('\n')

x = 0:10; y = x.^2-2; z = 2*x +5;
plot(x,y)   % Opens figure 1
plot(x,z)   % Overwrites in Figure 1

figure % Opens Fig. 2
plot(x,y) % Plots on figure 2

figure
x = 1:10; y = x; z = 0.5*x; q = x-3;
plot(x,y,'b',x,z,'r',x,q,'k')   % Plots to the same figure

% This will also plot to one figure
figure; hold on
plot(x,y,'b')
plot(x,z,'r')
plot(x,q,'k')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
% Subplots

% This will place the figures into columns
figure
subplot(3,1,1)
plot(x,y,'b')
subplot(3,1,2)
plot(x,z,'r')
subplot(3,1,3)
plot(x,q,'k')

% This will place the subfigures into rows
figure
subplot(1,3,1)
plot(x,y,'b')
subplot(1,3,2)
plot(x,z,'r')
subplot(1,3,3)
plot(x,q,'k')

% Creating a scatter plot (No connected lines)
x = 1:5; y = x;
figure
 % Defining the marker shape as 'o' the connecting line was removed
plot(x,y,'ro') 
figure
scatter(x,y,'r')

figure
x=-1:.001:1;
y1 = sqrt(1 - x.^2);
y2 = -sqrt(1 - x.^2);
plot(x,y1,'b',x,y2,'b','LineWidth',2)

figure
theta = 0:(2*pi)/1000:2*pi;
r = ones(1,length(theta));
polar(theta,r)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now try to plot the function 
% x(t) = 1 + 10 * exp(-0.5*t)*cos(5*t)

% Using array math
t = 0:0.01:12;
xa = 1 + 10*exp(-0.5*t).*cos(5*t);

% Using a while loop
t = [];
time = 0;
dt = 0.01;
xb = [];
while time <= 12
    xb = [xb, 1 + 10*exp(-0.5*time)*cos(5*time)];
    t = [t, time];
    time = time + dt;
end

% Now we plot and label the results for comparison
figure
plot(t,xa,'r','LineWidth',2)
xlabel('t','FontSize',12)
ylabel('x','FontSize',12)
title('Plot of x(t) = 1 + 10 e^{-0.5t} cos(5t)','FontSize',12)

 figure
plot(t,xb,'r','LineWidth',2)
xlabel('t','FontSize',12)
ylabel('x','FontSize',12)
title('Plot of x(t) = 1 + 10 e^{-0.5t} cos(5t)','FontSize',20)       

clear
close all

count = input('Enter # of different dt to use: ');
step = 0;

figure

while step < count
    step = step + 1;
    
    dt = input('Enter dt: ');
    t = 0:dt:8*pi;
    
    x = sin(t);
    y = cos(t);
    
    subplot(count,1,step)
    plot(t,x,'b-o',t,y,'c--+','LineWidth',2,'MarkerEdgeColor','r')
    xlabel('t','FontSize',12)
    ylabel('sin(t) / cos(t)','FontSize',12)
    title(['dt =' num2str(dt)],'FontSize',10)
    legend('sin(t)','cos(t)')
    grid on
end

