clc;
clear;

img = imread('im.jpg');
img = rgb2gray(img);

[r, c] = size(img);
new_img = zeros(r, c);

for i = 3:r-2
    for j = 3:c-2
        pix = -1;
        for x = -2:1:2
            for y = -2:1:2
                pix = max(pix, img(i+x, j+y));
            end
        end
        new_img(i, j) = pix;
    end
end

new_img = uint8(new_img);

figure, imshow(img);
figure, imshow(new_img);