clear, clc, close all
M = 16;
x = (0:M-1)';
y = qammod(x,M);
% hold on
scatterplot(y)

% real(y(1))*imag(y(2))

x = -2*pi:pi/16:2*pi;
z1 = exp(i*x);


real_z1 = real(z1);
imag_z1 = imag(z1);

figure
plot(real_z1,imag_z1,'g*');

a = gca
a.Children.ZData = linspace(0,20,65)