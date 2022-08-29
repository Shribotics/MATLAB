

time = 0:.01:4*pi;
ampl = 3;
phas = pi/3;
freq = 1

%compute sine wave
waves = ampl*sin(2*pi*freq*time + phas);

%cosine wave
wavec =  ampl*cos(2*pi*freq*time + phas);

%tangent wave
wave = ampl*tan(2*pi*freq*time + phas);

%plot
figure(1),clf
plot(time,wavec,'linew',2)
xlabel('Time(rad)')
ylabel('Amplitude')
set(gca,'xtick',0:pi/2:time(end),'fontsize',15)


%%
%GAussian

x    = 0:.1:10; %its t
ampl = 3; %its a
cent = 7; %its c
widt = .8; %its s

%define numerator and denominator
num = -(x-cent).^2;
den = 2*(widt).^2;

%gaussian
gaus = ampl*exp(num/den);

%plot
figure(2),clf
plot(x,gaus,'linew',2)
xlabel('Y'),ylabel('Y')

%%
%bonus:gaussian tapered tangent
%list for simulation
fs   = 8000;
time = 0:1/fs:3-1/fs;
ampl = 3;
cent = 1.5;
widt = .3;

%gaus
num = -(time-cent).^2;
den = 2*(widt).^2;

%gaussian
gaus = ampl*exp(num./den);

%tangent function
trigf = tan(2*pi*time*2);

wave = trigf .* gaus;

figure(3),clf
plot(time,wave,'k','linew',2) 



