function [J] = median_filtering(I,M)
%MEDIAN_FILTERING Summary of this function goes here
%   Detailed explanation goes here
A_size = size(I);
m = A_size(1);
n = A_size(2);
J = zeros(m,n);
medians = zeros(1,M);
for a = 1+((sqrt(M)-1)/2):m-((sqrt(M)-1)/2)
    for b = 1+((sqrt(M)-1)/2):n-((sqrt(M)-1)/2)
        index = 1;
        for i = a-((sqrt(M)-1)/2):a+((sqrt(M)-1)/2)
            for j = b-((sqrt(M)-1)/2):b+((sqrt(M)-1)/2)
                medians(1,index) = I(i,j);
                index = index +1;
            end
        end
        J(a,b) = median(medians);
    end
end
end

