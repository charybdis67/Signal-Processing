% Read Image
A=imread('image0.jpg');
% Read RGB from image
Red = A(:,:,1);
Green = A(:,:,2);
Black = A(:,:,3);
A_size = size(A);


% parta 
Rborder = 140;
for i = 1:A_size(1)
    for j = 1:A_size(2)
        if Red(i,j) > Rborder
           Red(i,j) = 255;
        else
           Red(i,j) = 0;
        end
    end
end

imshow(Red);

% partb
GBorder = 140;
for i = 1:A_size(1)
    for j = 1:A_size(2)
        if Green(i,j) > GBorder
           Green(i,j) = 255;
        else
           Green(i,j) = 0;
        end
    end
end

imshow(Green);

% partc
Blborder = 140;
for i = 1:A_size(1)
    for j = 1:A_size(2)
        if Black(i,j) > Blborder
           Black(i,j) = 255;
        else
           Black(i,j) = 0;
        end
    end
end

imshow(Black);

% partd 
R = 140;
G = 140;
B = 30;
new_image= zeros(A_size(1),A_size(2));
for i = 1:A_size(1)
    for j = 1:A_size(2)
        if ((Black(i,j) < B) && (Red(i,j) > R) && (Green(i,j)>G))
           new_image(i,j) = 255;
        else
           new_image(i,j) = 0;
        end
    end
end
imshow(new_image);

% parte
gray.jpg = zeros(A_size(1),A_size(2));
for i = 1:A_size(1)
    for j = 1:A_size(2)
        gray.jpg(i,j) = (Red(i,j)+Green(i,j)+Black(i,j))/3;
    end
end
gray.jpg = uint8(gray.jpg);
imshow(gray.jpg);