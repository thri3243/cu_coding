function [junk] = BSrn(A,low,high,x)
global junk 
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
    LB=A(mid);
    UB=A(mid+1);
    junk = sl;
    return
elseif x < A(mid)
    BSrn(A,low,mid-1,x);

    sl=junk;
else
    BSrn(A,mid+1,high,x);
    sl=junk;
end
