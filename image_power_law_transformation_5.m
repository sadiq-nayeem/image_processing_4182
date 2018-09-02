clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);
y = 6;  % gamma
cons = 60; % constant

[r, c] = size(img);
%new_img = zeros(r, c);

new_img = cons * (double(img) .^ (1/y));

new_img = uint8(new_img);

figure, imshow(img);
figure, imshow(new_img);