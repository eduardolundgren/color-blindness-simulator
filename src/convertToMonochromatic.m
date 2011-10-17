function [imgOut] = convertToMonochromatic(img)
	[rows, cols, z] = size(img);

	imgOut = img;

	for i = 1:rows;
		for j = 1:cols;
			rgb = double(img(i, j, :));

			imgOut(i, j, :) = (rgb(1)*0.3 + rgb(2)*0.59 + rgb(3)*0.11);
			% imgOut(i, j, :) = (min(rgb) + max(rgb))/2;
		end
	end