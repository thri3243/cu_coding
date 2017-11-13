
[N,M] = size(A);
B = zeros(M,N);


for j=1:N
    for k=1:M
        B(k,j) = A(j,k);
    end
end

B