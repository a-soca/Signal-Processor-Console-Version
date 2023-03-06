subplot(2,2,1); % Targets top left axes
plot(t, y); % Plots the time domain waveform of the initial file
title("Initial Waveform"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Time /s"); % Adds a label to the x axis

subplot(2,2,2); % Targets the top right axes
plot(yFinal); % Plots the time domain waveform of the processed file
ylim([min(y(1:end,1)),max(y(1:end,1))]); % Limits the y axis to the same scale as the initial file to visually reflect the change in amplitudes
title("Processed Waveform"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Time /s"); % Adds a label to the x axis (time is currently not in seconds)

subplot(2,2,3); % Targets the bottom left axes
semilogx(yFreqInit); % Plots the frequency domain amplitudes of the initial file
ylim([min(yFreqInit), max(yFreqInit)]);
xlim([0 20000]);
title("Initial Frequency Spectrum"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Frequency /Hz"); % Adds a label to the x axis

subplot(2,2,4); % Targets the bottom right axes
semilogx(yFreqFinal); % Plots the frequency domain amplitudes of the processed file
xlim([0 20000]);
ylim([min(yFreqInit), max(yFreqInit)]); % Limits the y axis to the maximum amplitude of the initial frequency spectrum to visually reflect the change in amplitudes of the processed file
title("Processed Frequency Spectrum"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Frequency /Hz"); % Adds a label to the x axis