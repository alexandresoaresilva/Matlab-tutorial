clear, clc, close all
y =@(x,noise)sin(x)+noise;

x = -4*pi:pi/16:4*pi;

N = max(size(x));
N = length(x);
noise = .1*randn(N, 1);

y_eval = y(x, noise')
plot(y_eval)

figure
grid on
ylim([-2 2]);
% 
% for i=1:N
%    hold on
%    scatter(x(i), y_eval(i))
%    pause(.03);
%    grid on
% end

hold on
scatter(x, y_eval)
plot(x, y(x, 0));
legend({'noisy','clean'})





