% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical class: If-else and switch statements

weight = input('Enter weight (lbs) of package: ');

if weight > 5
    cost = 4 + ceil(weight-5) * 1.25;
else
    cost = 4;
end

disp(['The cost to send this package is $' num2str(cost) '.'])