% Read Image
A=imread('image0.jpg');
% Read RGB from image
Red = A(:,:,1);
Green = A(:,:,2);
Black = A(:,:,3);
A_size = size(A);

% parte
gray.jpg = zeros(A_size(1),A_size(2));
for i = 1:A_size(1)
    for j = 1:A_size(2)
        gray.jpg(i,j) = (Red(i,j)+Green(i,j)+Black(i,j))/3;
    end
end
gray.jpg = uint8(gray.jpg);

%partb
% gaussnoise = 8*randn(size(gray.jpg,1), size(gray.jpg,2));
% imgaussnoise = uint8(double(gray.jpg) + gaussnoise);

% imshow(imgaussnoise);

%%partc
% M1 = 9;
% J1 = median_filtering(imgaussnoise,M1);
% J1 = uint8(J1);
% imshow(J1);

% M2 = 25;
% J2 = median_filtering(imgaussnoise,M2);
J2 = uint8(J2);
% imshow(J2);
% % 
% M3 = 121;
% J3 = median_filtering(imgaussnoise,M3);
% J3 = uint8(J3);
% imshow(J3);

%partd
% 
gaussnoise = 32*randn(size(gray.jpg,1), size(gray.jpg,2));
imgaussnoise = uint8(double(gray.jpg) + gaussnoise);

% imshow(imgaussnoise);
M1 = 9;
J1 = median_filtering(imgaussnoise,M1);
J1 = uint8(J1);
imshow(J1);

% M2 = 25;
% J2 = median_filtering(imgaussnoise,M2);
% J2 = uint8(J2);
% imshow(J2);
% 
% M3 = 121;
% J3 = median_filtering(imgaussnoise,M3);
% J3 = uint8(J3);
% imshow(J3);
noisypixels = rand( size(gray.jpg,1), size(gray.jpg,2) );
gray.jpg(  noisypixels <= ( 1 / 16 )  ) = 255;
gray.jpg(  noisypixels <= ( 15 / 16 )  ) = 0;
% imshow(gray.jpg);

% M1 = 9;
% J1 = median_filtering(gray.jpg,M1);
% J1 = uint8(J1);
% % imshow(J1);
  
% M2 = 25;
% J2 = median_filtering(gray.jpg,M2);
% J2 = uint8(J2);
% % imshow(J2);

% M3 = 121;
% J3 = median_filtering(gray.jpg,M3);
% J3 = uint8(J3);
% % imshow(J3);


