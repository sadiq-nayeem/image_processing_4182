clear;
clc;
img = (imread('im.jpg'));
img = rgb2gray(img);


max_pix = max(max(img));
min_pix = min(min(img));
[r, c] = size(img);

normalized_img = zeros(r, c);
temp = 255 / (max_pix - min_pix);
for i = (1:r)
    for j = (1:c)
        normalized_img(i, j) = ( (double(img(i, j)) - min_pix)* temp ) + 0;
    end
end

normalized_img = uint8(normalized_img);

figure('Name', 'Original Image');
imshow(img);

figure('Name', 'Normalized Image');
imshow(normalized_img);