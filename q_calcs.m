close all; clear; clc;

%% Load Data
% short alternating
data5s = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\short pin\alt_short_Experiment 1, forced laminar flow, 25%, 20W.mat');
data10s = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\short pin\alt_short_Experiment 2, forced laminar flow, 25%, 10W.mat');
data20s = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\short pin\alt_short_Experiment 1, forced laminar flow, 25%, 20W.mat');
data50s = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\short pin\alt_short_Experiment 3, forced laminar, 50%, 10W.mat');

% long alternating
data5L = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\long pin\alt_long_Experiment 4 long pin, 25%, 5W.mat');
data10L = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\long pin\alt_long_Experiment 2 long pin, 10W, 25%.mat');
data20L = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\long pin\alt_long_Experiment 1, long pin forced laminar20W, 25%.mat');
data50L = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\long pin\alt_long_Experiment 3 long pin, 10W, 50%.mat');

% long all but sides
data5AL = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\all long config\no_sides_configuration 1 (all long) Exp 4, 25%, 5W.mat');
data10AL = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\all long config\no_sides_configuration 1 (all long) Exp 2, 25%, 10.mat');
data20AL = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\all long config\no_sides_configuration 1 (all long) Exp 1,25%, 20W.mat');
data50AL = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\all long config\no_side_cofiguration 1 (all long) Exp 3, 50%, 10W.mat');

% all short
data5AS = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\FullFin, short and alternate\allshortfin5W25%correct.mat');
data10AS = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\FullFin, short and alternate\allshortfin10W25%correct.mat');
data20AS = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\FullFin, short and alternate\allshortfin20W25%correct.mat');
data50AS = load('G:\My Drive\Winter 2025\MAE 171A\Heat Transfer Experiment\pin experiments\FullFin, short and alternate\allshortfin10W50%correct.mat');

%% Calculate Q
A_full_short = 0.03659;
alpha5s = data5s.alpha;
alpha10s = data10s.alpha;
alpha20s = data20s.alpha;
alpha50s = data50s.alpha;
deltaT5s = data5s.deltaT;
deltaT10s = data10s.deltaT;
deltaT20s = data20s.deltaT;
deltaT50s = data50s.deltaT;

Q5s = mean(alpha5s)*mean(deltaT5s)*A_full_short
Q10s = mean(alpha10s)*mean(deltaT10s)*A_full_short
Q20s = mean(alpha20s)*mean(deltaT20s)*A_full_short
Q50s = mean(alpha50s)*mean(deltaT50s)*A_full_short


A_alt_long = 0.03659;
alpha5L = data5L.alpha;
alpha10L = data10L.alpha;
alpha20L = data20L.alpha;
alpha50L = data50L.alpha;
deltaT5L = data5L.deltaT;
deltaT10L = data10L.deltaT;
deltaT20L = data20L.deltaT;
deltaT50L = data50L.deltaT;

Q5L = mean(alpha5L) * mean(deltaT5L)*A_alt_long
Q10L = mean(alpha10L) * mean(deltaT10L)*A_alt_long
Q20L = mean(alpha20L) * mean(deltaT20L)*A_alt_long
Q50L = mean(alpha50L) * mean(deltaT50L)*A_alt_long

A_double_sans_sides = 0.45349;
alpha5AL = data5AL.alpha;
alpha10AL = data10AL.alpha;
alpha20AL = data20AL.alpha;
alpha50AL = data50AL.alpha;
deltaT5AL = data5AL.deltaT;
deltaT10AL = data10AL.deltaT;
deltaT20AL = data20AL.deltaT;
deltaT50AL = data50AL.deltaT;

Q5AL = mean(alpha5AL) * mean(deltaT5AL)*A_double_sans_sides
Q10AL = mean(alpha10AL) * mean(deltaT10AL)*A_double_sans_sides
Q20AL = mean(alpha20AL) * mean(deltaT20AL)*A_double_sans_sides
Q50AL = mean(alpha50AL) * mean(deltaT50AL)*A_double_sans_sides

A_alt_tall_short = 0.0497047;
alpha5AS = data5AS.alpha;
alpha10AS = data10AS.alpha;
alpha20AS = data20AS.alpha;
alpha50AS = data50AS.alpha;
deltaT5AS = data5AS.deltaT;
deltaT10AS = data10AS.deltaT;
deltaT20AS = data20AS.deltaT;
deltaT50AS = data50AS.deltaT;

Q5AS = mean(alpha5AS) * mean(deltaT5AS)*A_alt_tall_short
Q10AS = mean(alpha10AS) * mean(deltaT10AS)*A_alt_tall_short
Q20AS = mean(alpha20AS) * mean(deltaT20AS)*A_alt_tall_short
Q50AS = mean(alpha50AS) * mean(deltaT50AS)*A_alt_tall_short