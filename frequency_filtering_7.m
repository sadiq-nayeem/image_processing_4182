clear;
clc;

img = imread('im3.jpg');
img = rgb2gray(img);
d_low = 100; %Highest value of to pass
d_high = 100;
band_low = 100;
band_high = 150;

[r, c] = size(img);
low_img = img;
high_img = img;
band_img = img;

for i = 1:r
    for j = 1:c
        if img(i, j) > d_low
            low_img(i, j) = 0;
        end
        if img(i, j) < d_high
            high_img(i, j) = 255;
        end
        if img(i, j) < band_low || img(i, j) > band_high
            band_img(i, j) = 0;
        end            
    end
end        

figure, imshow(img)
figure, imshow(low_img);
figure, imshow(high_img);
figure, imshow(band_img);