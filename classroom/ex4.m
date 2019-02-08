theta = -4*pi:pi/16:4*pi;
z = exp(i*theta);


z_real = real(z);
z_imag = imag(z);

plot(z_real, z_imag)

