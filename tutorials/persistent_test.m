% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes16
% Global and persistent variables

function [] = persistent_test()

persistent test

fprintf('\n Before Statement: \n')
test

if isempty(test)
    test = 1; % initialization
else
    test = test + 1;
end

fprintf('\n After Statement: \n')
test
end