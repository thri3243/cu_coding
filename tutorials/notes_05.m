% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes05
% Logical class
% Created: user_input.m and roll_die.m

x=5;
y = -2;
z = 0;
% Using and expression
check_and = ((x > 0) && (y < 0))
check_and2 = ((x > 0) && (y < 0) && (z == 0))

% Using or expression
check_or = ((x > 0) || (y > 0))
check_or2 = ((x < 0) || (y>0))

% The exclusive or 
check_xor = xor(x < 0, y < 0)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comparing strings

% Compares strings letter-by-letter
'Hello' == 'Hello'
'hello' == 'Hello'

% Compare the full strings
strcmp('Hello', 'Hello')
strcmp('hello', 'Hello')