M = 16;
x = (0:M-1)';
y = qammod(x,M);
scatterplot(y)

% y = qammod(x,M)