% Currently this only works for single channel audio

yFinal = zeros(1,length(y)); 

%     \/WORKING With matrix method\/
for i = 1:length(y)-ws+1
    yFinal(i:i+ws-1) = yFinal(i:i+ws-1) + h.*y(i+ws-1);
end

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
