function sin_x = sin_func(x,N)

summ = 0;

for n = 1:N;
    summ = summ + (-1)^(n-1)*1/factorial(2*n-1)*x^(2*n-1);
end

sin_x = summ;

end