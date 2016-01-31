% week2_ex_5.m

%figure()
clear all;

matrix = zeros(10,10);
sizes = size(matrix);
x_length = sizes(1);
y_length = sizes(2);

imagesc(matrix);
colormap(gray);

index = 1;
while index < (x_length * y_length)+1
    matrix(index) = 1;
    if index > 1
        matrix(index-1) = index/(x_length * y_length);
    end
    imagesc(matrix)
    pause(0.005)
    index = index + 1;
    colormap(winter);
    
    disp(index) % to display index in a command window
    
end
disp('end')
clear all
%clc
