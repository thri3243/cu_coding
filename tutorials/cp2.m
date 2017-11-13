% lecture10_ex4.m
close all
n = length(x);
min_dist = inf;
for x_coord = 0:0.1:10
for y_coord = 0:0.1:10
    d = zeros(n,1);
    distance = 0;
    for j = 1:n
        d(j) = sqrt((x_coord - x(j))^2 + (y_coord - y(j))^2);
        distance = distance + d(j);
    end
    if distance < min_dist
        a = x_coord; b = y_coord;
        d_min = d; min_dist = distance;
    end
end
end

fprintf('\n The point that minimizes distance is (a,b) = (%g , %g).\n',a,b)
fprintf('\n The total minimum distance is %g.\n',min_dist)
fprintf('\n %10s \t %10s \n','Point','Distance')
fprintf('\n %10g \t %10g \n',[1:n;d_min'])

figure; hold on
scatter(a,b,'ro','filled','SizeData',14^2)
for j = 1:n
    scatter(x(j),y(j),'bo','filled','SizeData',14^2)
    text(x(j)-0.1,y(j),num2str(j),'Color','w')
end

legend('Minimial Point','Entered Points','Location','NorthEast')
xlabel('X-Coordinate','FontSize',12)
ylabel('Y-Coordinate','FontSize',12)
axis([0 10 0 10])