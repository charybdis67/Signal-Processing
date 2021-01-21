function [J] = mean_filtering(I,M)
%MEAN_FILTER this will filter the image with a mean
A_size = size(I);
m = A_size(1);
n = A_size(2);
J = zeros(m,n);
for a = 1+((sqrt(M)-1)/2):m-((sqrt(M)-1)/2)
    for b = 1+((sqrt(M)-1)/2):n-((sqrt(M)-1)/2)
        summation = 0;
        for i = a-((sqrt(M)-1)/2):a+((sqrt(M)-1)/2)
            for j = b-((sqrt(M)-1)/2):b+((sqrt(M)-1)/2)
                summation = summation + double(I(i,j));
            end
        end
        J(a,b) = summation/M;
    end
end
end

