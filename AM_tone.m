% Amplitude modulaated tone generator
%Mingshuang Li, UT Austin, 07.31.2020
fs=input('Enter sampling frequency: ');   %sampling frequency
dwell=1/fs; %dwell time
fm=input('Enter modulation frequency: ')  %
mod_per=1/fm;    % modulation period
dur=input('Enter the duration of tone: ');
t=(0:dwell:dur); % Create time vector
cf = input('Enter the carrier frequency of tone: ');
x = sin(2*pi*cf*t)
y= modulate(x,fm/2,fs,'am');

plot(t,y);
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   ');


names= input('Please type name of new audiofile: ', 's');
audiowrite(names,y,fs)