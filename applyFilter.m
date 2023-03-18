% Currently this only works for single channel audio

fprintf(2, "\nApplying filter. Please wait...\n");

yFinal = zeros(channelNum, length(y)); 

%     \/WORKING With matrix method\/
for c = 1:channelNum
    for i = 1:length(y)-ws+1
        yFinal(c, i:i+ws-1) = yFinal(c, i:i+ws-1) + h.*y(i+ws-1, c);
    end
end

yFinal = reshape(yFinal, [length(yFinal), channelNum]);

%     \/WORKING\/
%for i = ws:length(y)
%    for j = 1:ws
%        yFinal(i) = yFinal(i) + h(j) * y(i-j+1);
%    end
%end

%     \/WORKING ALT\/
%for i = 1:length(y)-ws
%    for j = 1:ws
%        yFinal(i) = yFinal(i) + h(j) * y(i+j-1);
%    end
%end

%     \/Broken\/
%intermediate = h.*y;
%yFinal = sum(intermediate,2);
%for i=1:length(intermediate)
%    yFinal(i) = sum(intermediate(i,1:end));
%end
