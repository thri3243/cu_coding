% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical class: If-else and switch statements

num = input('Enter a number: ');

if num > 0
    disp([num2str(num) ' is a positive number.'])
else
    if num == 0
        disp(['Number is 0.'])
    else
        disp([num2str(num) ' is a negative number.'])
    end
end