close all; clear all; clc;

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

% Variable to plot (change this as needed)
varName = 'Re';

% Initialize arrays
numFiles = length(fileNames);
means = zeros(1, numFiles);
stds = zeros(1, numFiles);
labels = cell(1, numFiles);

% Loop through each file
for i = 1:numFiles
    try
        % Load data from .mat file
        data = load(fileNames{i});

        % Extract mean and standard deviation for the selected variable
        means(i) = data.([varName, '_avg']);
        stds(i) = data.([varName, '_std']);
        labels{i} = strrep(fileNames{i}, '.mat', ''); % Remove .mat for labeling
    catch ME
        fprintf('Error processing %s: %s\n', fileNames{i}, ME.message);
        means(i) = NaN;
        stds(i) = NaN;
    end
end

% Create the error bar plot
figure;
hold on;

% Plot error bars with a specific color
errorbar(1:numFiles, means, stds, 'o-', 'LineWidth', 1.5, 'CapSize', 10, 'Color', [0, 0.5, 0.8]); % Custom color for error bars

% Plot markers with a different color
scatter(1:numFiles, means, 40, 'MarkerFaceColor', [1, 0, 0]); % Red markers

% Add labels to the error bars (below the points)
for i = 1:numFiles
    % Display the standard deviation as the error bar label
    text(i, means(i) - stds(i) - 0.05 * max(means), ['±', num2str(stds(i), '%.2f')], ...
        'HorizontalAlignment', 'center', 'VerticalAlignment', 'top', ...
        'FontSize', 10, 'Color', [0, 0, 0]);
end

hold off;

% Customize the plot
xticks(1:numFiles);
xticklabels(labels);
xtickangle(45);
ylabel(varName);
title(['Error Bar Plot of ', varName]);
grid on;

% Compress the spacing between points
xlim([0.8, numFiles + 0.1]); % Adjust x-axis limits to compress the plot
set(gca, 'XTick', 1:numFiles); % Ensure ticks are at integer positions