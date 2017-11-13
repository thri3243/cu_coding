% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical class: If-else and switch statements

if x == -1 || x == 0 || x == 1 || x == 5
    y=3;
elseif x ==1 || x == 3 || x == 4 
    y = 4;
elseif x == -2 || x == -3 || x == -4
    y = 5;
else
    y = x;
end

% Both of these loops should accomplish the same thing
% Switch cases can only be defined for finite numbers

switch x 
    case {-1, 0, 1, 5}
        y = 3;
    case {2, 3, 4}
        y = 4;
    case {-2, -3, -4}
        y = 5;
    otherwise
        y = x;
end