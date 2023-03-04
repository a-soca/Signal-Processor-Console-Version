yFreqInit = abs(fft(y)); % Finds the real numbers in the discrete fourier transform of the initial file and stores them in an array
yFreqInit = yFreqInit(1:floor(length(yFreqInit)/2))*2; % Halves the length of the array to remove the symmetrical points and doubles the amplitudes to redistribute the energy from the removed points

yFreqFinal = abs(fft(yNew)); % Finds the real numbers in the discrete fourier transform of the processed data and stores them in an array
yFreqFinal = yFreqFinal(1:floor(length(yFreqFinal)/2))*2; % Halves the length of the array to remove the symmetrical points and doubles the amplitudes to redistribute the energy from the removed points