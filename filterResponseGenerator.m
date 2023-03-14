[H,w] = freqz(h); % Calculates the frequency response of the filter

w = w/(2*pi)*fs; % Converts from rad/sample to hz for plot

