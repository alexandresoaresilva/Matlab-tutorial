%plot square wave

x_zeros = zeros(1,10);

x1 = linspace(0,.5,10)


x2 = [x1 x_zeros+.5 x1+.5 x_zeros+2.5 x1+2.5]


y1 = linspace(0,1,10)
y =  [x_zeros y1 x_zeros+1 y1(end:-1:1) x_zeros]

plot(x2, y)
ylim([0 1.2])
ylim([0 1.2])



