% week2_ex_5.m

%figure()
clear all;

matrix = zeros(10,10);
size = size(matrix);
x_length = size(1);
y_length = size(2);

imagesc(matrix);
colormap(gray);

index = 1;
while index < (x_length * y_length)+1
    matrix(index) = 1;
    if index > 1
        matrix(index-1) = index/(x_length * y_length);
    end
    imagesc(matrix)
    pause(0.00005)
    index = index + 1;
    colormap(winter);

end

clear all
%clc
