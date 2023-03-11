h = w.*hd; % Generates the filter coefficient array from the window function and basic filter response

h = h./sum(h); % Normalises filter coefficients (experimental)
