clear;
clc;

img = imread('im.jpg');
img = rgb2gray(img);

[r, c] = size(img);
new_img = zeros(r, c);

sobel = [-1 0 1; -2 0 2; -1 0 1];

min_pix = 256;
max_pix = -1;
MAX_BRIGHTNESS = 200;


for i = 2:r-1
    for j = 2:c-1
        pixel_value = 0.0;
        for x = -1:1:1
            for y = -1:1:1
                pixel_value = pixel_value + sobel( x+2, y+2 ) * img(i+x, j+y);
            end
        end
        if(pixel_value > max_pix)
            max_pix = pixel_value;
        end
        if pixel_value < min_pix
            min_pix = pixel_value;
        end
    end
end


for i = 2:r-1
    for j = 2:c-1
        pixel_value = 0.0;
        for x = -1:1:1
            for y = -1:1:1
                new_img(i, j) = new_img(i, j) + sobel( x+2, y+2 ) * img(i+x, j+y);
            end
        end
        new_img(i, j) = MAX_BRIGHTNESS * ((new_img(i, j) - min_pix) / (max_pix - min_pix));
    end
end

new_img = uint8(new_img);

figure, imshow(img);
figure, imshow(new_img);