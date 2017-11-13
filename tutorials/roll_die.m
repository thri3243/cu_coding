% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical expression

user = input('Would you like to roll a 4 sided die (Y/N)? ', 's');


if user == 'Y' || user == 'y'
    die = rand; %rand generates a number between 0 and 1
    
    if die >= 0 && die <= 1/4
        disp('You rolled a 1');
    elseif die > 1/4 && die <= 1/2
        disp('You rolled a 2')
    elseif die > 1/2 && die <= 3/4
        disp('You rolled a 3')
    elseif die > 3/4 && die <= 1
        disp('You rolled a 4')
    end
end