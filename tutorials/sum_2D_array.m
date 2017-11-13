% sum_2D_array.m

[N,M] = size(A);

summ = 0;

for j=1:N
    for k=1:M
        summ = summ + A(j,k);
    end
end

fprintf('\n The sum of the values in A is %g. \n',summ)