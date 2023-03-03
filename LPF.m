ws = input("Please enter a window size : "); % Prompts user to select a window size
yNew = zeros(1, length(y)-ws+1); % Preallocates memory to array to increase efficiency

filterProfile = ones(ws,1)/ws; % Constructs the filter profile array

for i = 1:length(y)-ws+1 % Loops for the number of times it takes to process all elements in the imported file array while accounting for the length of the window size
    yNew(i) = y(i:i+ws-1)*filterProfile; % Performs matrix multiplication to apply the filter to the audio
end % Ends the loop