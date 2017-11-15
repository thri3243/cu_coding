clc;
clear all;
Xi=[0,0,0,1,2,3,4,4,5,5,5];
Ln=length(Xi);

format compact

xi=Xi(1):.05:Xi(Ln);
Bounds=zeros(101,2);

for i=1:90
    [sl] = BSrn(Xi,1,Ln,xi(i));
    Bounds(i,1)=Xi(sl);
    Bounds(i,2)=Xi(sl+1);
    %fprintf("%g is between Xi(%g)=%g and Xi(%g)=%g\n",xi(i),sl,Xi(sl),sl+1,Xi(sl+1));
    
end

%Overwrites all shape functions as for loop is executed
for k=1:Ln
    if (xi(i) >= Xi(sl)) && (xi(i) < Xi(sl+1))
        Nip(k,1)=1;
    else
        Nip(k,1)=0;
    end
end  