%Mingshuang Li, UT Austin, 2020.06.06
clear;
Fs = input('Please input the sampling frequency(Hz): ');
dwell = 1/Fs;
duration = input('Please input the duration(s): ');
time = 0:dwell:duration;
Fc = input('Please input the frequency(Hz): ');
y = sin(2*pi*Fc*time);
figure;
plot(time(1:Fs/100),y(1:Fs/100))
ext = [".wav"]
names= append(num2str(Fc),' Hz_',num2str(duration),'ms',ext)
audiowrite(names,y,Fs)
sound (y,Fs)


