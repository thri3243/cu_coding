% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes10
% For Loops
% wrote for_plot.m and fib_seq.m for this series as well

x1 = [];

for j = 1:5
    x1 = [x1,j]
    
    if j == 3
        break
    end
end

x2 = [];

for j = 1:5
    if j == 2 || j == 4
        continue
    end
    
    x2 = [x2,j]
end

% Calculate and stores values
summ = 0;
x = zeros(1,10);

for n = 1:10
    x(n) = 1/n^2;
    summ = summ + x(n);
end

disp(['summ = ' num2str(summ)])
x

% Writing a script to plot the function
