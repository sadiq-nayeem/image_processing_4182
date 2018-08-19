function gray_image = rgb_to_gray( rgb_image )

[r c k] = size(rgb_image);
gray_image = zeros(r, c);
for i = 1:r
    for j = 1:c
        x = 0;
        
        x = x + 0.2126 * rgb_image(i, j, 1);
        x = x + 0.7152 * rgb_image(i, j, 2);
        x = x + 0.0722 * rgb_image(i, j, 3);
        
        x = x / 3;
        
        gray_image(i, j) = (x);
    end
end
gray_image = uint8(gray_image);