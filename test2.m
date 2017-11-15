% Tad Riley
% Nov. 14, 2017
% Test case shape function

clc;
clear all;
Xi=[0,0,0,1,2,3,4,4,5,5,5];
Ln=length(Xi);

format compact

xi=Xi(1):.05:Xi(Ln);

for i=1:90
    [sl] = BSrn(Xi,1,Ln,xi(i));
    fprintf("%g is between Xi(%g)=%g and Xi(%g)=%g\n",xi(i),sl,Xi(sl),sl+1,Xi(sl+1))
    for k=1:Ln
        if (xi(i) >= Xi(sl)) && (xi(i) < Xi(sl))
            Nip(k,1)=1;
        else
            Nip(k,1)=0;
        end
    end
end