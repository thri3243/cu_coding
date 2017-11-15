% Tad Riley
% Nov. 14, 2017
% B-splines

%zeroth order shape functions
clc;
clear all;

Xi=[0,0,0,1,2,2,2];
len=length(Xi);
xi=Xi(1):.01:Xi(len);

%initialize shape functions
Nip=zeros(len+1,len-1);
Nip(3,0)=1