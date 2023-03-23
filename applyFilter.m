% Currently this only works for single channel audio, multichannel
% experiences time distortion

fprintf(2, "\nApplying filter. Please wait...\n"); % Updates the user on the status of the program in the console

%     \/WORKING With matrix method\/
%yFinal = zeros(channelNum, length(y)); % Initialises the array of y values in the output to increase efficiency by preallocating the memory

%for c = 1:channelNum % For the number of channels of audio, the following code will execute
%    for i = 1:length(y)-ws+1 % For one more than the number of elements in y less the window size, the following code will execute
%        yFinal(c, i:i+ws-1) = yFinal(c, i:i+ws-1) + h.*y(i+ws-1, c); % Slides the window over one channel of the imported audio and multiplies the values in the coefficient vector and amplitude vector element wise, summing the results
%    end % Ends the nested for loop
%end % Ends the for loop

%yFinal = reshape(yFinal, [length(yFinal), channelNum]); % Reshapes the output matrix so that there are channelNum columns as required by the audiowrite function used later


%     \/EXPERIMENTAL With matrix method\/
yFinal = zeros(length(y), channelNum); % Initialises the array of y values in the output to increase efficiency by preallocating the memory

h=h.';

for c = 1:channelNum % For the number of channels of audio, the following code will execute
    for i = 1:length(y)-ws+1 % For one more than the number of elements in y less the window size, the following code will execute
        yFinal(i:i+ws-1, c) = yFinal(i:i+ws-1, c) + h.*y(i+ws-1, c); % Slides the window over one channel of the imported audio and multiplies the values in the coefficient vector and amplitude vector element wise, summing the results
    end % Ends the nested for loop
end % Ends the for loop

%yFinal = reshape(yFinal, [length(yFinal), channelNum]); % Reshapes the output matrix so that there are channelNum columns as required by the audiowrite function used later







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
