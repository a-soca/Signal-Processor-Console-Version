subplot(4,2,1); % Targets top left axes
plot(t, y, 'color', 'k'); % Plots the time domain waveform of the initial file
title("Initial Waveform"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Time /s"); % Adds a label to the x axis
grid on;

subplot(4,2,2); % Targets the top right axes
plot(t, yProcessed, 'color', 'k'); % Plots the time domain waveform of the processed file
%ylim([min(y(1:end,1)),max(y(1:end,1))]); % Limits the y axis to the same scale as the initial file to visually reflect the change in amplitudes
title("Processed Waveform"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Time /s"); % Adds a label to the x axis (time is currently not in seconds)
grid on;

subplot(4,2,3); % Targets the upper middle left axes
plot(xFreq, yAmpInit, 'color', 'k'); % Plots the frequency domain amplitudes of the initial file
ylim([0, max(yAmpInit)]);
xlim([0 20000]);
title("Initial Frequency Spectrum"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Frequency /Hz"); % Adds a label to the x axis
grid on;

subplot(4,2,4); % Targets the upper middle right axes
plot(xFreq, yAmpProcessed, 'color', 'k'); % Plots the frequency domain amplitudes of the processed file
xlim([0 20000]);
ylim([0, max(yAmpInit)]); % Limits the y axis to the maximum amplitude of the initial frequency spectrum to visually reflect the change in amplitudes of the processed file
title("Processed Frequency Spectrum"); % Adds title to graph
ylabel("Amplitude"); % Adds a label to the y axis
xlabel("Frequency /Hz"); % Adds a label to the x axis
grid on;

subplot(4,2,5); % Targets the bottom right axes
plot(w,angle(H), 'color', 'k'); % Plots the phase response of the filter
title("Filter Phase Response"); % Adds a title
xlabel('Frequency / Hz'); % Labels the x axis
ylabel('Phase / Radians'); % Labels the y axis
xlim([0, 20000]); % Limits the range of x values to that of the audible frequency spectrum

subplot(4,2,6); % Targets the bottom left axes
plot(w,abs(H), 'color', 'k'); % Plots the amplitude response of the filter
title("Filter Amplitude Response"); % Adds a title
xlabel('Frequency / Hz'); % Labels the x axis
ylabel('Amplitude'); % Labels the y axis
xlim([0, 20000]); % Limits the range of x values to that of the audible frequency spectrum

subplot(4,2,7); % Targets the lower middle left axes
stem(hd, 'color', 'k'); % Plots the basic filter response with a stem plot
xlim([1 ws]); % Limits the range of values for the x axis
title("Basic Filter Response"); % Adds a title

subplot(4,2,8); % Targets the lower middle right axes
stem(h, 'color', 'k');
xlim([1 ws]); % Limits the range of values for the x axis
title("Filter Coefficients"); % Adds a title

