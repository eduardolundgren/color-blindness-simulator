img = imread('../assets/test.png');

[imgOut] = convertToDichromatImage(img, 'deutran');

imshow(imgOut, []);

[imgOut] = convertToDichromatImage(img, 'protan');

figure,imshow(imgOut, []);

[imgOut] = convertToMonochromatic(img);

figure,imshow(imgOut, []);