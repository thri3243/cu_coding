function [xs, f_xs] = quad_opt()

fprintf('\nEnter quadratic function in the form ax^2 + bx + c. \n \n')

a = input('Enter value for a: ');
b = input('Enter value for b: ');
c = input('Enter value for c: ');

% Derivative of f is f' = 2ax + b = 0
xs = -b / (2*a);

% Second derivative of f is f''= 2a 
if 2*a > 0
    fprintf('\n Outputs are for a minimum. \n')
elseif 2*a < 0
    fprintf('\n Outputs are for a maximum. \n')
end

f_xs = a*xs^2 + b*xs + c;

end