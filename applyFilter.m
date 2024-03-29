fprintf(2, "\nApplying filter. Please wait...\n"); % Updates the user on the status of the program in the console

yProcessed = zeros(length(y), channelNum); % Initialises the array of y values in the output to increase efficiency by preallocating the memory

h = h.'; % Flips the rows and columns of the filter coefficient vector so that the element-wise multiplication results in the correct dimensions for the audiowrite function to process later, this step saves having to reshape the entire final matrix which would take more processing time

for i = 1:channelNum % For the number of channels, the following code will execute
    h(:, i) = h(:,1); % Duplicates the values in the first column to a new column 
end % Ends the for loop

for i = 1:length(y)-ws+1 % For one more than the number of elements in y less the window size, the following code will execute
    yProcessed(i:i+ws-1,:) = yProcessed(i:i+ws-1,:) + h.*y(i+ws-1,:); % Slides the window over one channel of the imported audio and multiplies the values in the coefficient vector and amplitude vector element wise, summing the results
end % Ends the for loop

