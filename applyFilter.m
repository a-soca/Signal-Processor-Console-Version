% Currently this only works for single channel audio

yFinal = zeros(1, length(y));

% add multi channel
intermediate = h.*y;
for i=1:length(yFinal)
    yFinal(i) = sum(intermediate(i,1:end));
end

size(yFinal)



%     \/WORKING\/
%for i = ws:length(y)    
%    for k = 1:ws
%        yFinal(i) = yFinal(i) + h(k) * y(i-k+1);
%    end
%end

