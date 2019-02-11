a = [1 2 3]
b = [4 5 6]
M = [(a').^2 a' b'];
t = [6 8 13]';

M_inv = inv(M);

w = M_inv*t

M*w