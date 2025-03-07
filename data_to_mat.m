close all; clear all; clc;

%% Free conv, 10W
filename = 'Experiment 1, forced laminar flow, 25%, 20W.txt';
outputMatFile = 'Experiment 1, forced laminar flow, 25%, 20W.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);

%% Forced conv, 10W, 25%
filename = 'Experiment 2, forced laminar flow, 25%, 10W.txt';
outputMatFile = 'Experiment 2, forced laminar flow, 25%, 10W.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);

%% Forced laminar conv, 5W, 25%
filename = 'Experiment 3, forced laminar, 50%, 10W.txt';
outputMatFile = 'Experiment 3, forced laminar, 50%, 10W.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);

%% Forced laminar conv, 20W, 25%
filename = 'Experiment 4, forced laminar, 25%, 5W.txt';
outputMatFile = 'Experiment 4, forced laminar, 25%, 5W.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);
%% Forced conv, 10W, 50%
filename = 'alternatelongshort10W25%.txt';
outputMatFile = 'alternatelongshort10W25%.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);
%% Forced turbulent conv, 5W, 25%
filename = 'alternatelongshort20W25%.txt';
outputMatFile = 'alternatelongshort20W25%.mat';

% Define import options
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', '\t'); % Use tab as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];
opts.DataLines = [6, Inf]; % Skip the metadata

% Read the table
dataTable = readtable(filename, opts);

% Convert numeric columns and ignore NaNs
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save cleaned data to .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);

%% Forced turbulent conv, 20W, 25%
filename = 'Forced turbulent conv, 20W, 25%.csv';
outputMatFile = 'Forced turbulent conv, 20W, 25%.mat';

% Read the data while ignoring the timestamp column
opts = delimitedTextImportOptions('NumVariables', 13, 'Delimiter', ','); % Use comma as delimiter
opts.VariableNames = ["t", "Re", "Nu", "q", "alpha", "P", "v", "T1", "T2", "T3", "T4", "deltaT", "L"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", ...
                      "double", "double", "double", "double", "double", "double"];

% Read the table
dataTable = readtable(filename, opts);

% Convert each column into a separate array and remove NaN values
Re = dataTable.Re(~isnan(dataTable.Re));
Nu = dataTable.Nu(~isnan(dataTable.Nu));
q = dataTable.q(~isnan(dataTable.q));
alpha = dataTable.alpha(~isnan(dataTable.alpha));
P = dataTable.P(~isnan(dataTable.P));
v = dataTable.v(~isnan(dataTable.v));
T1 = dataTable.T1(~isnan(dataTable.T1));
T2 = dataTable.T2(~isnan(dataTable.T2));
T3 = dataTable.T3(~isnan(dataTable.T3));
T4 = dataTable.T4(~isnan(dataTable.T4));
deltaT = dataTable.deltaT(~isnan(dataTable.deltaT));
L = dataTable.L(~isnan(dataTable.L));

% Save all cleaned variables into a .mat file
save(outputMatFile, 'Re', 'Nu', 'q', 'alpha', 'P', 'v', 'T1', 'T2', 'T3', 'T4', 'deltaT', 'L');

% Display results
disp(['Data loaded and saved successfully to ' outputMatFile]);