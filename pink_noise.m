%Mingshuang Li, UT Austin
fs = 44100;
duration = input('Please input the duration of pink noise (s): ');
y = pinknoise(duration*fs);
figure;
pspectrum(y,fs);
names= input('Please type name of new audiofile: ', 's');
audiowrite(names,y,fs)

