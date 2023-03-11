%yFinal = conv(h, y(1:end,1)); % Performs convolution on the unprocessed audio file and the filter coefficient vector


yFinal = zeros(size(y));
for i = 1:length(y)-ws
    yFinal(i:i+ws) = yFinal(i:i+ws)+h(1:end,2).*y(i:i+ws,1);
end
% Currently this only works for single channel audio