clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);
[r, c] = size(img);
levels = 256;

pmf = calc_pmf(img, levels);
cdf = calc_cdf(pmf, levels);
mod_cdf = floor(cdf .* (levels-1));

for i = 1:r
    for j = 1:c
        prev_grey = img(i, j);
        mod_img(i, j) = mod_cdf( prev_grey + 1);
    end    
end

mod_img = uint8(mod_img);

figure, imshow(img);
figure, imhist(img);
figure, imshow(mod_img);
figure, imhist(mod_img);