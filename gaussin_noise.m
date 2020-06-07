gaussian = randn(4410000,1);
gaussian = gaussian./(max(abs(gaussian)));
audiowrite('gaussian.wav',gaussian,44100)