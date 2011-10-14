% x = gallery('uniformdata', [100 2], 40);

% [v,c]=voronoin(x); 

% for i = 1:length(c) 
% 	if all(c{i} ~= 1)   % If at least one of the indices is 1, then it is an open region and we can't patch that.
% 		% disp(v(c{i}, 1));
% 		patch(v(c{i}, 1), v(c{i}, 2), i, 'EdgeColor', 'none'); % use color i.
% 	end
% end

% x = rand(20, 1);
% y = rand(20, 1);

% dt = DelaunayTri(x,y);

x =randn(20, 1);
y =randn(20, 1);
z =randn(20, 1);
dt = DelaunayTri(x,y);
T = dt.Triangulation;

fig = figure('Colormap', hsv(10));

hold on
patch(x(T)', y(T)', rand(size(z(T)')), 'FaceColor', 'flat', 'EdgeColor', 'none');
hold off

% figure; imshow(p1,  [0  10000 ]);

% hold off


% c = dt.X;

% for i = 1:length(c) 
% 	% if all(c(i) ~= 1)   % If at least one of the indices is 1, then it is an open region and we can't patch that.
% 		disp(c(i, 1));
% 		patch(c(i, 1), c(i, 2), i, 'EdgeColor', 'none'); % use color i.
% 	% end
% end

% triplot(dt, 'FaceColor', 'cyan');