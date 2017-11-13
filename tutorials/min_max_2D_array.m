[N,M] = size(A);

minimum = A(1,1);   %For initialization
maximum = A(1,1);   %For initialization

for j = 1:N
    for k = 1:M
        if A(j,k) >= maximum
            maximum = A(j,k);
            max_coord = [j,k];
        end
        
        if A(j,k) <= minimum
            minimum = A(j,k);
            min_coord = [j,k];
        end
    end
end

fprintf('\n The maximum value is %g at (%g, %g). \n',maximum,...
    max_coord(1),max_coord(2))
fprintf('\n The minimum value is %g at (%g, %g). \n',minimum,...
    min_coord(1), min_coord(2))

