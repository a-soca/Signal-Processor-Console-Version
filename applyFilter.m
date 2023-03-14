% Currently this only works for single channel audio

yFinal = zeros(1,length(y));

%     \/WORKING\/
for i = ws:length(y)
    for k = 1:ws
        yFinal(i) = yFinal(i) + h(k) * y(i-k+1);
    end
end

%     \/Broken\/
%intermediate = h.*y;
%for i=1:length(intermediate)
%    yFinal(i) = sum(intermediate(i,1:end));
%end