clear;
clc;
img = imread('im.jpg');
%mask3 = 
img = rgb2gray(img);


figure
imshow(img);
title('Original Image');



[r c] = size(img);
mask_size = 5;

% generate mask operating matrixes
mr = [];
mc = [];

mask_calc = (floor(mask_size / 2) * -1);
for i = 1:mask_size
    mr = [mr(1:end) mask_calc];
    mc = [mc(1:end) mask_calc];
    mask_calc = mask_calc + 1;
end

img2 = zeros(r, c); 
image_average = zeros(r, c);
image_median = zeros(r, c);
image_max = zeros(r, c);
image_min = zeros(r, c);

mask_row_start = ceil(mask_size / 2);
mask_col_start = ceil(mask_size / 2);

for i= mask_row_start:r+ mr(1)
    for j = mask_col_start:c + mc(1)
        x = [];
        [temp mr_size] = size(mr);
        [temp mc_size] = size(mc);
        averaging = 0;
        
        
        
        for mask_row = 1:mr_size
            for mask_col = 1:mc_size
                img_row_num = i + mr( mask_row );
                img_col_num = j + mc(mask_col);
                img_found_pixel = img( img_row_num, img_col_num);
                x = [ x(1:end) img_found_pixel ];
                averaging = averaging + (img_found_pixel/ (mask_size * mask_size));               
            end
        end
        z = sort(x);
        image_average(i, j) = averaging;
        image_median(i, j) = z( ceil( mask_size * mask_size  / 2) );
        image_max(i, j) = z( mask_size * mask_size);
        image_min(i, j) = z(1);
        %break;
    end
    %break;
end

image_average = uint8(image_average);
image_median = uint8(image_median);
image_max = uint8(image_max);
image_min = uint8(image_min);


figure
imshow(image_average);
title('AVERAGE');

figure
imshow(image_median);
title('MEDIAN');

figure
imshow(image_max);
title('MAX');

figure
imshow(image_min);
title('MIN');


