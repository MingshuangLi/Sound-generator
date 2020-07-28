% Mingshuang Li, UT Austin, 2020.07.27
% Chrip tone with increasing frequency

clear
fs = input('Please input the sampling frequency (Hz): ')
duration = input('Please input the duration of chirp (s): ')
f_s = input('Please input the starting frequency of chirp (Hz): ')
f_e = input('Please input the end frequency of chirp (Hz): ')
t = linspace(0, duration, duration*fs);
y = chirp(t,f_s,duration(end),f_e);
y = y./(max(abs(y))); 
sound(y, fs);
pspectrum(y,fs,'spectrogram','TimeResolution',0.1, ...
    'OverlapPercent',99,'Leakage',0.85,'FrequencyLimits',[1 10000]);


names= input('Please type a name of new audiofile: ', 's');
audiowrite(names,y,fs)

