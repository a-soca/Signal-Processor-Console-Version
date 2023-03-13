%yFinal = conv(h, y(1:end,1)); % Performs convolution on the unprocessed audio file and the filter coefficient vector

%yFinal = zeros(size(y));
%y = [y zeros(ws)]; % padding unfiltered signal
%for i = 1:length(y)-ws
%    yFinal(i:i+ws-1) = yFinal(i:i+ws-1)+h(1:end,2).*y(i:i+ws-1,1);
%end
% Currently this only works for single channel audio




%h=reshape(h,[ws,1]);
%y=reshape(y,[length(y),1]);
yFinal = zeros(1, length(y));
%yFinal = sum(h.*y,2);

%convert this into matrix multiplication and add multi channel
for i = ws:length(y)    
    for k = 1:ws
        yFinal(i) = yFinal(i) + h(k) * y(i-k+1);
    end
end

