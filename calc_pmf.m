function pmf = calc_pmf(img, levels)

[r, c] = size(img);
freq = zeros(levels, 1);

for i = 1:r
    for j = 1:c
        indx =  img(i, j) + 1;
        freq( indx ) = freq( indx ) + 1;
    end
end
im_size = r * c;
pmf = freq ./ im_size;