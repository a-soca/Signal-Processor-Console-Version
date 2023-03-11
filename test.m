% Input signal
y = audioread("Unfiltered.wav");

% Filter coefficients
%h = [0.1, 0.2, 0.3, 0.2, 0.1];

% Filter length
%L = length(h);

% Pad input signal with zeros
%x_padded = [x, zeros(1, L-1)];

% Apply convolution operation
yFinal = zeros(1, length(y));
for n = ws:length(y)
    for k = 1:ws
        yFinal(n) = yFinal(n) + h(k) * y(n-k+1);
    end
end

% Discard samples corresponding to filter delay
%y = y(L:end-L+1);

subplot(2,1,1);
plot(x);
subplot(2,1,2);
plot(yFinal);