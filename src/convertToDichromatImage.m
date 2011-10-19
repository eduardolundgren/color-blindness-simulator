function [imgOut] = convertToDichromatImage(img, method)
	setDefaultValue(2, 'method', 'deutran');

	RGB_LMS = [ 17.8824 43.5161 4.11935; 3.45565 27.1554 3.86714; 0.0299566 0.184309 1.46709 ];
	RGB_LMS_INV = inv(RGB_LMS);
	LMS_DEUTRAN = [ 1 0 0; 0.494207 0 1.24827; 0 0 1 ];
	LMS_PROTAN = [ 0 2.02344 -2.52581; 0 1 0; 0 0 1 ];

	if (strcmp(method, 'deutran'))
		T = LMS_DEUTRAN;
	else
		T = LMS_PROTAN;
	end

	[rows, cols, z] = size(img);
	imgOut = img;

	for i = 1:rows;
		for j = 1:cols;
			rgb = double(img(i, j, :));
			RGB = [rgb(1), rgb(2), rgb(3)];

			LMS = RGB_LMS*RGB';
			LMSt = T*LMS;
			RGBt = RGB_LMS_INV*LMSt;
			imgOut(i, j, :) = RGBt;
		end
	end