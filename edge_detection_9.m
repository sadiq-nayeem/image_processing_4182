clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);

sobel = [-1 0 1; -2 0 2; -1 0 1];
prewitt = [-1 0 1; -1 0 1; -1 0 1];

new_img_sobel = edge_detecting(img, sobel);
new_img_prewitt = edge_detecting(img, prewitt);

new_img_sobel = uint8(new_img_sobel);
new_img_prewitt = uint8(new_img_prewitt);


figure, imshow(img);
figure, imshow(new_img_sobel);
figure, imshow(new_img_prewitt);