x_coords = [1,2,3,4,5];
y_coords = [2,4,5,6,5];
%plot(x_coords, y_coords, 'o');

x_bar = mean(x_coords);
y_bar = mean(y_coords);

disp([x_bar, y_bar]);

sum_xy_diff = 0;
sum_squared = 0;

for c=1:5
    sum_xy_diff = sum_xy_diff + ((x_coords(c) - x_bar) * (y_coords(c) - y_bar));
    sum_squared = sum_squared + ((x_coords(c) - x_bar)^2);
end

%disp([sum_xy_diff, sum_squared])

b1 = sum_xy_diff / sum_squared;
b0 = y_bar - (b1 * x_bar);

%disp([b1, b0])

x = linspace(0,6);
y = b1*x + b0;
%plot(x,y)

hold on
plot(x_coords, y_coords, 'o');