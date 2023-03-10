function [valid] = menuValidation(validInputs, userInput)
% Checks user input for menu selections
%   Takes a vector of valid inputs as well as the user input, returns 1 or 
%   0 if the user input is in the vector
valid = ismember(userInput, validInputs);
end