close all; clear all; clc

% List of .mat files
fileNames = {
    'Free conv, 10W.mat', ...
    'Forced conv, 10W, 25%.mat', ...
    'Forced laminar conv, 20W, 25%.mat', ...
    'Forced laminar conv, 5W, 25%.mat', ...
    'Forced conv, 10W, 50%.mat', ...
    'Forced turbulent conv, 5W, 25%.mat', ...
    'Forced turbulent conv, 20W, 25%.mat'
};
% Loop through each file
for i = 1:length(fileNames)
    try
        % Load the current file
        data = load(fileNames{i});
        fields = fieldnames(data);
        
        % Compute standard deviation for each field
        for j = 1:length(fields)
            fieldName = fields{j};
            if isnumeric(data.(fieldName)) && ~isscalar(data.(fieldName)) % Check if it's an array
                data.([fieldName, '_std']) = std(data.(fieldName));
            end
        end
        
        % Save the updated data back to the original file
        save(fileNames{i}, '-struct', 'data');
    catch ME
        fprintf('Error processing %s: %s\n', fileNames{i}, ME.message);
    end
end
