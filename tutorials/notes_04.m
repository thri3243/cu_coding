% Tad Riley
% Date: Nov 10, 2017
% Last Edit:
% Source: notes04
% User Interation

% 1) char Class
% 2) input()
% 3) Displaying to user: disp(), fprintf()


clc; clear all;

% Anything withing single-apostrophe is considered a character
% Below are strings, which are arrays containing characters
x = 'Hello'
y = 'Number 45'
z = y + y % This is a gibberish answer

% Creating an array from strings
y = 'Welcome to'; z = 'ASE 201';
new = [x ' ' y ' ' z]

% One cannot combine variables of different classes
x = 3;
y = ['The value of x is' x]

% To attain this output we must convert character class
p = 200;
['The calculated pressure is ' num2str(p) ' pascals.']

% Using inputs
x = input('Enter a number: ');
x

y = input(['The first number you entered was ' num2str(x) ...
'. Enter a different number: ']);
y

num = ['The first and second  number you enetered was ' num2str(x) ...
    ' and ' num2str(y) '. Enter a third number: '];
z=input(num);
z

% There are two ways to enter characters as inputs. 1) Explicity use
% apostrophes or 2) use an option which expects a character string

% Method 1
response = input('Would you like to exit the program (Y/N)? ');
response

% Method 2
response = input('Would you like to exit the program (Y/N)? ', 's');
response

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Using the disp() function
disp('this will display the text I have written')
x = 5;
disp(['The number I entered for x is ' num2str(x) '.'])
c = ['The number I entered for x is ' num2str(x) '.'];
disp(c)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% using the fprintf() function
x = 5; y = -1.75983735; z = 'm/s';
fprintf('\n The velocity of the car is %g %s \n', y,z)
fprintf('\n The velocity of the car is %.8f %s \n \n',y,z)
fprintf('\n The velocity of the car is %10g %s \n \n',y,z)
fprintf('\n The velocity of the car is %-10g %s \n \n',y,z)
fprintf(['\n The position of the car is %g %s. \n The velocity of the ' ...
    'car is %g %s \n \n'],x,'meters',y,z)

fprintf('\n %10c \t %10c \n \n %10g \t %10g \n \n','x','y',x,y)