% Currently this only works for single channel audio

yFinal = zeros(1,length(y));

%     \/WORKING\/
for i = ws:length(y)
    for k = 1:ws
        yFinal(i) = yFinal(i) + h(k) * y(i-k+1);
    end
end

%     \/WORKING ALT\/
%for i = 1:length(y)-ws
%    for k = 1:ws
%        yFinal(i) = yFinal(i) + h(k) * y(i+k-1);
%    end
%end

%     \/Broken\/
%intermediate = h.*y;
%yFinal = sum(intermediate,2);
%for i=1:length(intermediate)
%    yFinal(i) = sum(intermediate(i,1:end));
%end