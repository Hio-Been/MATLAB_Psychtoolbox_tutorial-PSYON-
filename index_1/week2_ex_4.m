% week2_ex_4.m

clc;

x = [1, 2];
y = x;

figure();
hold on;


for i = 1:8*20
    a = mod(i,8);
    if a == 0
        a = 8;
    end
    
    subplot(4, 2, a)
    z = [ linspace(1,400, (i/4)); linspace(400,1, (i/4)) ];
    imagesc(x,y,z);
    pause(0.1)
end

clc;
close all;
result='end'
