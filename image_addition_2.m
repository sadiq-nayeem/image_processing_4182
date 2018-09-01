clear;
clc;

img_1 = imread('im1.jpg');
img_2 = imread('im2.jpg');

img_1 = rgb2gray(img_1);
img_2 = rgb2gray(img_2);

[r1, c1, k1] = size(img_1);
[r2, c2, k2] = size(img_2);

r = max(r1, r2);
c = max(c1, c2);
final_img = zeros(r, c);

for i = 1:r
    for j = 1:c
        x = 0;
        if ( i <= r1 && j <= c1)
            x = img_1(i, j);
        end
        if( i <= r2 && j <= c2)
            x = x + img_2(i, j);
        end
        
        if x > 255
            x = 255;
        end
        
        final_img(i, j) = x;
    end
end

final_img = uint8(final_img);

figure('Name', 'Main Image - 1')
imshow(img_1);

figure('Name', 'Main Image - 2');
imshow(img_2);

figure('Name', 'Added Image');
imshow(final_img);

% k = imadd(img_1, img_2);
% figure('Name', 'Built_in_function');
% imshow(k);
        