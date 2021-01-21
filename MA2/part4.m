% Read Image
A=imread('image0part4.jpg');
% Read RGB from image
Red = A(:,:,1);
Green = A(:,:,2);
Black = A(:,:,3);
A_size = size(A);

x1 = [1 0 -1; 2 0 -2; 1 0 -2];
x2 = [1 2 1; 0 0 0; -1 -2 -1];

% imshow(Red);
% imshow(Black);
% imshow(Green);
G1 = conv2(Red,x1);
G2 = conv2(Red,x2);
GRed = sqrt((G1.^2)+(G2.^2));
Gred = uint8(GRed);

G1g = conv2(Green,x1);
G2g = conv2(Green,x2);
GGreen = sqrt((G1g.^2)+(G2g.^2));
Ggreen = uint8(GGreen);

G1b = conv2(Black,x1);
G2b = conv2(Black,x2);
GBlack = sqrt((G1b.^2)+(G2b.^2));
Gblack = uint8(GBlack);


G = cat(3, Gred, Ggreen,Gblack);
imshow(G);

