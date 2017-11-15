function [junk junk2 junk3] = BSrn(A,low,high,x)
global junk junk2 junk3
mid=ceil(low+(high-low)/2);
%if x == A(low) || x == A(high)
    %sl = mid;
    %junk = sl;
%else
if x == A(mid)
    sl = mid;
    junk = sl;
elseif (x >= A(mid)) && (x < A(mid+1))
    sl = mid;
    junk2=A(mid);
    junk3=A(mid+1);
    junk = sl;
    return
elseif x < A(mid)
    BSrn(A,low,mid-1,x);

    sl=junk;
else
    BSrn(A,mid+1,high,x);
    sl=junk;
end
