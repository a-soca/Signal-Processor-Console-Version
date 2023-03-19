
% If the user closes the window instead of selecting a file, the program
% will crash which is why a try method is used in this case.
try % Attempts the following code
    [file,path] = uigetfile('*.wav','Select a .wav file'); % Prompts user to select a file for input and stores the filename and path as variables
    fullPath = append(path, file); % Converts the filename and path to a single string to be read by the audioread function

    [y, fs] = audioread(fullPath); % Creates a matrix storing the amplitude data for the audio file and a variable to store the sample rate of the file
    t = (0:1:length(y)-1)/fs; % Creates an array of the time each sample is located
    
    channelNum = size(y,2); % Stores the number of channels of audio in the file in a variable
catch % If the code produces an error, the following will execute
    fprintf(2, "File was not imported. Please try again."); % Prints an error message to console
end % Ends the try statement
