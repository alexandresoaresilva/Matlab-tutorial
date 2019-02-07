clear, clc, close all

sample_rate = 4000; %samples per second
total_time = 2;
total_length = sample_rate*total_time;
freq = 100;
gen_sin = @(f,t,phase,noise)sin(2*pi*f*t + phase)+noise;
t = linspace(0,total_time, total_length);
sin1 = gen_sin(freq,t,0,0);

%% 1st
subplot(2,2,1);
plot(sin1);


sound(.5*sin1,sample_rate)
pause


%% 2nd
noise2 = .1*randn(1, total_length);
sin2 = gen_sin(freq,t,0,noise2);
sound(sin2, sample_rate)
subplot(2,2,2);
plot(t, sin2)
xlim([1 1.25])
pause

%% 3rd
sin3 = conv(sin2,1/8*[1 1 1 1 1 1 1 1],'same');
subplot(2,2,3);
sound(sin3, sample_rate)
plot(sin3)
pause

%% 

signalAnalyzer

%% 
sin3_hz = gen_sin(3,t, 0, 0);
sin4_hz = gen_sin(4,t, 0, 0);
sin4 = sin3_hz + sin4_hz;

figure
subplot(221)
plot(t,sin3_hz);
subplot(222)
plot(t,sin4_hz);
subplot(223)
plot(t,sin4);


% sin2 = gen_sin(100,t,0,.1*randn(1, total_length));

sin_x = gen_sin(10,t,0,0);
sin_x = gen_sin(50,t,0,0);
sound(sin_x);
sin_y = gen_sin(500,t,0,0);
sound(sin_y);
sin_add = sin_x+sin_y;
sound(sin_add);
sin_filt = conv(sin_add,1/8*[1 1 1 1 1 1 1 1],'same');
sound(sin_filt);
sin_filt2 = conv(sin_add,[-1 0 1]*0.5,'same');
sound(sin_filt2);
