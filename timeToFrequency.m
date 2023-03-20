yFreqInit = zeros(size(y)); % Initialises the array of amplitudes of each frequency for the initial audio
yFreqFinal = zeros(size(y)); % Initialises the array of amplitudes of each frequency for the processed audio
for c = 1:channelNum % For the number of channels of audio, the following code will execute
    yFreqInit(:,c) = abs(fft(y(:, c))); % Finds the real numbers in the discrete fourier transform of the initial file and stores them in an array
    yFreqFinal(:,c) = abs(fft(yFinal(:, c))); % Finds the real numbers in the discrete fourier transform of the processed data and stores them in an array
end % Ends the for loop

yFreqInit = yFreqInit(1:floor(length(yFreqInit)/2))*2; % Halves the length of the array to remove the symmetrical points and doubles the amplitudes to redistribute the energy from the removed points

yFreqFinal = yFreqFinal(1:floor(length(yFreqFinal)/2))*2; % Halves the length of the array to remove the symmetrical points and doubles the amplitudes to redistribute the energy from the removed points

xFreq = 0:(fs/length(y)):(fs/2-fs/length(y)); % Creates an array of frequencies