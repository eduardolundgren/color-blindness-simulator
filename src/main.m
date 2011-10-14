img = imread('../assets/2.jpg');

imshow(img, []);
title('Original');

[imgOut] = convertToDichromatImage(img, 'deutran');

figure,imshow(imgOut, []);
title('Dichromacy deutran');

[imgOut] = convertToDichromatImage(img, 'protan');

figure,imshow(imgOut, []);
title('Dichromacy protan');

[imgOut] = convertToMonochromatic(img);

figure,imshow(imgOut, []);
title('Monocromacy');