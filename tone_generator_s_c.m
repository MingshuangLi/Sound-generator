% Mingshuang Li, UT Austin, 2020. 06.08
% Sound generator for pure tone and complex sounds
clear all;
Fs = input('Please input the sampling frequency(Hz): ');
dwell = 1/Fs;
duration = input('Please input the duration(s): ');
number = input('How many pure tones invovled in the sound: ');

time = 0:dwell:duration;
if number == 1;
    a1 = input('Please input the amplitude for the first tone: ');
    f1 = input('Please input the frequency for the first tone(Hz): ');
    phi1 = input('Please input the phase for the first tone (phi): ');
    y = a1*sin(2*pi*f1*time+ phi1 * pi);
elseif number == 2;
    a1 = input('Please input the amplitude for the first tone: ');
    f1 = input('Please input the frequency for the first tone(Hz): ');
    phi1 = input('Please input the phase for the first tone (phi): ');
    a2 = input('Please input the amplitude for the second tone: ');
    f2 = input('Please input the frequency for the second tone(Hz): ');
    phi2 = input('Please input the phase for the second tone (phi): ');
    y = a1*sin(2*pi*f1*time+ phi1 * pi)+ a2*sin(2*pi*f2*time+ phi2 * pi);
elseif number == 3;
    a1 = input('Please input the amplitude for the first tone: ');
    f1 = input('Please input the frequency for the first tone(Hz): ');
    phi1 = input('Please input the phase for the first tone (phi): ');
    a2 = input('Please input the amplitude for the second tone: ');
    f2 = input('Please input the frequency for the second tone(Hz): ');
    phi2 = input('Please input the phase for the second tone (phi): ');
    a3 = input('Please input the amplitude for the third tone: ');
    f3 = input('Please input the frequency for the third tone(Hz): ');
    phi3 = input('Please input the phase for the third tone (phi): ');
    y = a1*sin(2*pi*f1*time+ phi1 * pi)+ a2*sin(2*pi*f2*time+ phi2 * pi)+a3*sin(2*pi*f3*time+ phi3 * pi);
elseif number == 4;
    a1 = input('Please input the amplitude for the first tone: ');
    f1 = input('Please input the frequency for the first tone(Hz): ');
    phi1 = input('Please input the phase for the first tone (phi): ');
    a2 = input('Please input the amplitude for the second tone: ');
    f2 = input('Please input the frequency for the second tone(Hz): ');
    phi2 = input('Please input the phase for the second tone (phi): ');
    a3 = input('Please input the amplitude for the third tone: ');
    f3 = input('Please input the frequency for the third tone(Hz): ');
    phi3 = input('Please input the phase for the third tone (phi): ');
    a4 = input('Please input the amplitude for the fourth tone: ');
    f4 = input('Please input the frequency for the fourth tone(Hz): ');
    phi4 = input('Please input the phase for the fourth tone (phi): ');
    y = a1*sin(2*pi*f1*time+ phi1 * pi)+ a2*sin(2*pi*f2*time+ phi2 * pi)+a3*sin(2*pi*f3*time+ phi3 * pi)+ a4*sin(2*pi*f4*time+ phi4 * pi);
elseif number == 5;
    a1 = input('Please input the amplitude for the first tone: ');
    f1 = input('Please input the frequency for the first tone(Hz): ');
    phi1 = input('Please input the phase for the first tone (phi): ');
    a2 = input('Please input the amplitude for the second tone: ');
    f2 = input('Please input the frequency for the second tone(Hz): ');
    phi2 = input('Please input the phase for the second tone (phi): ');
    a3 = input('Please input the amplitude for the third tone: ');
    f3 = input('Please input the frequency for the third tone(Hz): ');
    phi3 = input('Please input the phase for the third tone (phi): ');
    a4 = input('Please input the amplitude for the fourth tone: ');
    f4 = input('Please input the frequency for the fourth tone(Hz): ');
    phi4 = input('Please input the phase for the fourth tone (phi): ');
    a5 = input('Please input the amplitude for the fifth tone: ');
    f5 = input('Please input the frequency for the fifth tone(Hz): ');
    phi5 = input('Please input the phase for the fifth tone (phi): ');
    y = a1*sin(2*pi*f1*time+ phi1 * pi)+ a2*sin(2*pi*f2*time+ phi2 * pi)+a3*sin(2*pi*f3*time+ phi3 * pi)+ a4*sin(2*pi*f4*time+ phi4 * pi)+a5*sin(2*pi*f5*time+ phi5 * pi);
else disp('The number of pure tones for a complex sound in this code is limited to 5.');
end

figure;
plot(time(1:fix(Fs/200))*1000,y(1:fix(Fs/200))); 

figure;
pspectrum(y,Fs,'FrequencyLimits',[1 10000]);

names= input('Please type name of new audiofile: ', 's');
audiowrite(names,y,Fs)




