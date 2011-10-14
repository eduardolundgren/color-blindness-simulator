function [imgOut] = convertToMonochromatic(img)
	imgOut = rgb2gray(img);