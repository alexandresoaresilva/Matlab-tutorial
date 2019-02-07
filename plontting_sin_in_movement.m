clc, clear, close all
%% function
y =@(x,noise)sin(x)+noise;

% creating x and noise
x = -4*pi:pi/16:4*pi

N = size(x)
noise = .1*randn(N(2),1)

%% evaluating the function and plotting it
y_eval = y(x,noise');
figure
grid on
hold on
ylim([-2 2])
% xlim([-4*pi 4*pi])
scatter(x(1),y_eval(1))
pause(.03)

for i=2:length(y_eval)
    hold on
    subplot(1,2,1)
    scatter(x(i),y_eval(i))
    pause(.03)
    grid on
end
subplot(1,2,1)
plot(x,y(x,0),'-b')
ax_y = gca 
legend({'noisy sine wave', 'clean sine wave'})
hold off

subplot(1,2,2)
hold on
grid on
title('clean sine wave')
scatter(x,y_eval)
plot(x,y(x,0),'-r')
legend({'noisy sine wave', 'clean sine wave'})
xticks([-4*pi -2*pi 0 pi 2*pi 4*pi])
xticklabels({'-4\pi','-2\pi','0','\pi','2\pi','4\pi'})

hold off