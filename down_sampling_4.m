clear;
clc;

img = imread('im3.jpg');
img = rgb2gray(img);

[r, c] = size(img);

k = 5;  % down sample the image by k

nr = floor(r/k);
nc = floor(c/k);
new_img = zeros(nr, nc);

for i = 1:nr
    for j = 1:nc
        new_img(i, j) = img(i*k, j*k);
    end
end
new_img = uint8(new_img);

figure, imshow(img);
figure, imshow(new_img);