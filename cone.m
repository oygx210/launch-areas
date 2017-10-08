function [h1,h3] = cone(col,x,y)

[x, y] = parsing(x, y, 'front');
[p_M] = maximum(x,y);
R = norm(p_M);

[max_y, ind] = max(abs(y));
max_x = x(ind);
maxy = [max_x max_y];
x_proj = [max_x 0];

theta = acos(norm(x_proj)/norm(maxy));

hold on
h1=annulus(0, 0, 0, R, col, -theta, theta);
alpha(h1,0.5);
plot(x, y, 'k.','MarkerSize',10)
h3=plot(p_M(1), p_M(2),'o','MarkerSize',13,'Color',col,'Linewidth',1.5);
h5=plot(0,0,'r.','MarkerSize',21)

grid on
hold off
axis equal
end