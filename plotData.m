subplot(2,2,1); % Targets top left axes
plot(y); % Plots the time domain waveform of the initial file

subplot(2,2,2); % Targets the top right axes
plot(yFinal); % Plots the time domain waveform of the processed file
ylim([-1,1]); % Limits the y axis to the same scale as the initial file to visually reflect the change in amplitudes


subplot(2,2,3); % Targets the bottom left axes
plot(yFreqInit); % Plots the frequency domain amplitudes of the initial file

subplot(2,2,4); % Targets the bottom right axes
plot(yFreqFinal); % Plots the frequency domain amplitudes of the processed file
ylim([0,max(yFreqInit)]); % Limits the y axis to the maximum amplitude of the initial frequency spectrum to visually reflect the change in amplitudes of the processed file
