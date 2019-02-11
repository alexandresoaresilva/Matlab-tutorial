clear, clc, close all
sample_Rate = 4000;
total_time = 2;
total_length = total_time*sample_Rate;

freq = 250;

gen_sin=@(f, t, phase, noise)sin(2*pi*f*t + phase) + noise;


t = linspace(0, total_time, total_length);

sin1 = gen_sin(freq, t, 0, 0);
subplot(1,2,1)
stem(t, sin1)
xlim([0 0.025])
subplot(122)
xlim([0 0.025])
plot(t, sin1)

% sound(.5*sin1, sample_Rate)

%% 
noise = .1*randn(1, total_length)
sin2 = gen_sin(freq, t, 0, noise);
figure
subplot(1,2,1)
stem(t, sin2)
xlim([0 0.025])
subplot(122)
plot(t, sin2)
xlim([0 0.025])
sound(.5*sin2, sample_Rate)
pause
%integrating filter
n = 12
filt = 1/n*ones(1,n);

% der_filt = 1/2*[-1 0 1];


sin3 = conv(sin2, filt,'same')
sin3 = conv(sin3, filt,'same')

sound(sin3, sample_Rate)

