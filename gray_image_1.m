%{
1. Reading image and color to gray image conversion.
2. Image addition, subtraction and normalization.
3. Down sample kn*km image into n*m.
4. Histogram Equalization
5. Image transformation: log, power and inverse.
6. Spatial Filtering: Moving average(3, 5, ...25, etc odd sized), min, max, median
7. Frequency Domain Filtering: High pass, low pass and band pass filters.
8. Threshold based image segmentation
9. Different Edge detection in spatial domain
10. Histogram based image segmentation.
11. Morphological Image Processing: erosion, dilation, opening and closing filter.
%}

clc;
clear;

img = imread('im.jpg');
figure('Name', 'Original Image');
imshow(img);
title('original image');

gray_img_by_function = rgb2gray(img);
gray_img_by_me = rgb_to_gray(img);


figure('Name', 'Gray Image by ME'), imshow(gray_img_by_me);
figure('Name', 'Original Image by BUILT IN FUNCTION');, imshow(gray_img_by_function);
