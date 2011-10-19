x =randn(20, 1);
y =randn(20, 1);
z =randn(20, 1);
dt = DelaunayTri(x,y);
T = dt.Triangulation;

fig = figure('Colormap', hsv(10));

hold on
patch(x(T)', y(T)', rand(size(z(T)')), 'FaceColor', 'flat', 'EdgeColor', 'none');
hold off