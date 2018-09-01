function cdf = calc_cdf(pmf, levels)

cdf = zeros(levels, 1);
cdf(1) = pmf(1);
for i = 2:levels
    cdf(i) = cdf(i-1) + pmf(i);
end