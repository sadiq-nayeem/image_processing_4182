clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);

levels = 256;

inverted_img = (levels - 1) - img;

figure, imshow(img);
figure, imshow(inverted_img);