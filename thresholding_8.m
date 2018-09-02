img = imread('im3.jpg');
img = rgb2gray(img);

[r, c] = size(img);
new_img = zeros(r, c);

segment = 115; % Below this value, all are black. Otherwise white

for i = 1:r
    for j = 1:c
        if img(i, j) < segment
            new_img(i, j) = 0;
        else
            new_img(i, j) = 255;
        end
    end
end

figure, imshow(img)
figure, imshow(new_img);