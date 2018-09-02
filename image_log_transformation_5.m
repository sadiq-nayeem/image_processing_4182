clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);
cons = 60; % constant

[r, c] = size(img);
new_img = zeros(r, c);
for i = 1:r
    for j = 1:c
        new_img(i, j) = cons * log( double(img(i, j)) + 1 );
    end
end

new_img = uint8(new_img);

figure, imshow(img);
figure, imshow(new_img);
        