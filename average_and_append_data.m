clear all; close all; clc;

%% Average Data
% List of .mat files
fileNames = {
    'configuration 1 (all long) Exp 1,25%, 20W.mat', ...
    'configuration 1 (all long) Exp 2, 25%, 10.mat', ...
    'cofiguration 1 (all long) Exp 3, 50%, 10W.mat', ...
    'configuration 1 (all long) Exp 4, 25%, 5W.mat', ...
   % 'Forced conv, 10W, 50%.mat', ...
   % 'Forced turbulent conv, 5W, 25%.mat', ...
   % 'Forced turbulent conv, 20W, 25%.mat'
};

% Loop through each file
for i = 1:length(fileNames)
    % Load the current file
    data = load(fileNames{i});
    
    % Calculate the average of each variable
    Re_avg = mean(data.Re);
    Nu_avg = mean(data.Nu);
    q_avg = mean(data.q);
    alpha_avg = mean(data.alpha);
    P_avg = mean(data.P);
    v_avg = mean(data.v);
    T1_avg = mean(data.T1);
    T2_avg = mean(data.T2);
    T3_avg = mean(data.T3);
    T4_avg = mean(data.T4);
    deltaT_avg = mean(data.deltaT);
    L_avg = mean(data.L);
    
    % Create a new structure for the averaged values
    avgData = struct(...
        'Re_avg', Re_avg, ...
        'Nu_avg', Nu_avg, ...
        'q_avg', q_avg, ...
        'alpha_avg', alpha_avg, ...
        'P_avg', P_avg, ...
        'v_avg', v_avg, ...
        'T1_avg', T1_avg, ...
        'T2_avg', T2_avg, ...
        'T3_avg', T3_avg, ...
        'T4_avg', T4_avg, ...
        'deltaT_avg', deltaT_avg, ...
        'L_avg', L_avg ...
    );
    
    % Save the averaged values into a new .mat file with '_avg' appended
    [~, name, ~] = fileparts(fileNames{i}); % Extract the file name without extension
    newFileName = [name, '_avg.mat']; % Append '_avg' to the file name
    save(newFileName, '-struct', 'avgData'); % Save the structure to the new file
end


%% Apended Data to File

% Loop through each file
for i = 1:length(fileNames)
    % Load the current file
    data = load(fileNames{i});
    
    % Calculate the average of each variable
    Re_avg = mean(data.Re);
    Nu_avg = mean(data.Nu);
    q_avg = mean(data.q);
    alpha_avg = mean(data.alpha);
    P_avg = mean(data.P);
    v_avg = mean(data.v);
    T1_avg = mean(data.T1);
    T2_avg = mean(data.T2);
    T3_avg = mean(data.T3);
    T4_avg = mean(data.T4);
    deltaT_avg = mean(data.deltaT);
    L_avg = mean(data.L);
    
    % Append the averaged values to the original data
    data.Re_avg = Re_avg;
    data.Nu_avg = Nu_avg;
    data.q_avg = q_avg;
    data.alpha_avg = alpha_avg;
    data.P_avg = P_avg;
    data.v_avg = v_avg;
    data.T1_avg = T1_avg;
    data.T2_avg = T2_avg;
    data.T3_avg = T3_avg;
    data.T4_avg = T4_avg;
    data.deltaT_avg = deltaT_avg;
    data.L_avg = L_avg;
    
    % Save the updated data back to the original file
    save(fileNames{i}, '-struct', 'data');
end