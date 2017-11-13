% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical class: If-else and switch statements

year = input('Enter the year your car was made: ');

if year <= 1996
    tax = 54;
elseif year <= 2000
    tax = 65;
elseif year <= 2004
    tax = 80;
elseif year <= 2007
    tax = 100;
else
    tax = 135;
end

disp(['The amount of tax you have to pay is $' num2str(tax) '.'])