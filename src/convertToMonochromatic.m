function [img] = convertToMonochromatic(img)
	[rows, cols, z] = size(img);

	for i = 1:rows;
		for j = 1:cols;
			rgb = double(img(i, j, :));
			img(i, j, :) = (max(rgb) + min(rgb))/2;
		end
	end