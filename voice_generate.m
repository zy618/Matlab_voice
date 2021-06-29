% No.7
strentch_time = 0: (8e3-1);
s_sample_200 = double((mod(strentch_time, 40) == 0));
% sound(s_sample_200, 8000);
s_sample_300 = double((mod(strentch_time, 26) == 0));
% sound(s_sample_300, 8000);

% No.8
s_sample_variation = zeros(8000, 1);
for i = 1: 100
    pt = 80 + 5 * mod(i, 50);
    frez = floor(8000 / pt);
    tmp = 0: (80-1);
    s_sample_variation(80*(i-1)+1 : 80*i) = double((mod(tmp, frez) == 0));
end
sound(s_sample_variation, 8000);
stem(s_sample_variation);