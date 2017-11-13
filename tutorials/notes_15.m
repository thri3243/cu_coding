% Tad Riley
% Date: Nov 12, 2017
% Last Edit:
% Source: notes15
% Functions in functions
%
% Wrote: nfact.m, plot_func.m, func.m, smallest_magnitude_func.m,
% sinx_tol.m
clear all

nf = nfact(0)
nf = nfact(3)
nf = nfact(171)
%nf = nfact(3.5)

sinx = sinx_tol(pi/4, 1e-14)
sin(pi/4)

fx = feval('func',1)
fx = feval('func',1:3)

plot_func('func',0,2,100)

[mag] = smallest_magnitude_func('func',0,2,100)