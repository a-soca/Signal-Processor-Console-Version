h = w.*hd; % Generates the filter coefficient array from the window function and basic filter response

h = h/sum(abs(h)); % Normalises filter coefficients so that gain remains at unity
