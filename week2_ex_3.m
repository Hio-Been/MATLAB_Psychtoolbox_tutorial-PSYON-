% week2_ex_3.m

x = [1, 2];
y = x;

figure();
hold on;


for i = 1:8
    subplot(4, 2, i)
    z = [ linspace(1,400, i^2) ];
    imagesc(x,y,z);
end
