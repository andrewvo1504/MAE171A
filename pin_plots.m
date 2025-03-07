close all; clear; clc;
%% Load data

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




%% Temp vs. Power


% Compute means and standard deviations
deltaT_25s = [mean(data5s.deltaT') mean(data10s.deltaT') mean(data20s.deltaT')];
P_25s = [mean(data5s.P') mean(data10s.P') mean(data20s.P')];
std_deltaT_25s = [std(data5s.deltaT) std(data10s.deltaT) std(data20s.deltaT)];
std_P_25s = [std(data5s.P) std(data10s.P) std(data20s.P)];

% Repeat for other configurations
deltaT_25L = [mean(data5L.deltaT') mean(data10L.deltaT') mean(data20L.deltaT')];
P_25L = [mean(data5L.P') mean(data10L.P') mean(data20L.P')];
std_deltaT_25L = [std(data5L.deltaT) std(data10L.deltaT) std(data20L.deltaT)];
std_P_25L = [std(data5L.P) std(data10L.P) std(data20L.P)];

deltaT_25AL = [mean(data5AL.deltaT') mean(data10AL.deltaT') mean(data20AL.deltaT')];
P_25AL = [mean(data5AL.P') mean(data10AL.P') mean(data20AL.P')];
std_deltaT_25AL = [std(data5AL.deltaT) std(data10AL.deltaT) std(data20AL.deltaT)];
std_P_25AL = [std(data5AL.P) std(data10AL.P) std(data20AL.P)];

deltaT_25AS = [mean(data5AS.deltaT') mean(data10AS.deltaT') mean(data20AS.deltaT')];
P_25AS = [mean(data5AS.P') mean(data10AS.P') mean(data20AS.P')];
std_deltaT_25AS = [std(data5AS.deltaT) std(data10AS.deltaT) std(data20AS.deltaT)];
std_P_25AS = [std(data5AS.P) std(data10AS.P) std(data20AS.P)];

figure(1)
hold on;


errorbar(P_25s, deltaT_25s, std_deltaT_25s, std_deltaT_25s, std_P_25s, std_P_25s, 'o-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50s.P), mean(data50s.deltaT), 'd-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(P_25L, deltaT_25L, std_deltaT_25L, std_deltaT_25L, std_P_25L, std_P_25L, 'o-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50L.P), mean(data50L.deltaT), 'd-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(P_25AL, deltaT_25AL, std_deltaT_25AL, std_deltaT_25AL, std_P_25AL, std_P_25AL, 'o-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50AL.P), mean(data50AL.deltaT), 'd-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(P_25AS, deltaT_25AS, std_deltaT_25AS, std_deltaT_25AS, std_P_25AS, std_P_25AS, 'o-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50AS.P), mean(data50AS.deltaT), 'd-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);

xlim([4,21]);
ylim([2,24]);
xlabel('Power [W]'); ylabel('T4 - T1 [C]');
title('Four Pin Fin Layouts: T4 - T1 vs. Power Input');
legend('Alternating short fins, 25% Fan', 'Alternating short fins, 50% Fan', ...
    'Alternating long fins, 25% Fan','Alternating long fins, 50% Fan','All long fins, minus both sides, 25% Fan', ...
    'All long fins, minus both sides, 50% Fan', 'Full plate short fins, 25% Fan', 'Full plate short fins, 50% Fan', ...
    'Location', 'best');
hold off;

%% Nu vs. Temp
% Compute standard deviations

% short alternating
Nu_25s = [mean(data5s.Nu') mean(data10s.Nu') mean(data20s.Nu')];
deltaT_25s = [mean(data5s.deltaT') mean(data10s.deltaT') mean(data20s.deltaT')];

% long alternating
Nu_25L = [mean(data5L.Nu') mean(data10L.Nu') mean(data20L.Nu')];
deltaT_25L = [mean(data5L.deltaT') mean(data10L.deltaT') mean(data20L.deltaT')];

% long all but sides
Nu_25AL = [mean(data5AL.Nu') mean(data10AL.Nu') mean(data20AL.Nu')];
deltaT_25AL = [mean(data5AL.deltaT') mean(data10AL.deltaT') mean(data20AL.deltaT')];

% all short
Nu_25AS = [mean(data5AS.Nu') mean(data10AS.Nu') mean(data20AS.Nu')];
deltaT_25AS = [mean(data5AS.deltaT') mean(data10AS.deltaT') mean(data20AS.deltaT')];

std_Nu_25s = [std(data5s.Nu) std(data10s.Nu) std(data20s.Nu)];
std_Nu_25L = [std(data5L.Nu) std(data10L.Nu) std(data20L.Nu)];
std_Nu_25AL = [std(data5AL.Nu) std(data10AL.Nu) std(data20AL.Nu)];
std_Nu_25AS = [std(data5AS.Nu) std(data10AS.Nu) std(data20AS.Nu)];

figure(2)
hold on;

errorbar(deltaT_25s, Nu_25s, std_Nu_25s, std_Nu_25s, std_deltaT_25s, std_deltaT_25s, 'o-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50s.deltaT), mean(data50s.Nu), 'd-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(deltaT_25L, Nu_25L, std_Nu_25L, std_Nu_25L, std_deltaT_25L, std_deltaT_25L, 'o-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50L.deltaT), mean(data50L.Nu), 'd-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(deltaT_25AL, Nu_25AL, std_Nu_25AL, std_Nu_25AL, std_deltaT_25AL, std_deltaT_25AL, 'o-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50AL.deltaT), mean(data50AL.Nu), 'd-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(deltaT_25AS, Nu_25AS, std_Nu_25AS, std_Nu_25AS, std_deltaT_25AS, std_deltaT_25AS, 'o-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(mean(data50AS.deltaT), mean(data50AS.Nu), 'd-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);

xlim([2,24]);
ylim([150,470]);
xlabel('T4 - T1 [C]'); ylabel('Nusselt Number [unitless]');
title('Four Pin Fin Layouts: Nusselt Number vs. T4 - T1');
legend('Alternating short fins, 25% Fan', 'Alternating short fins, 50% Fan', ...
    'Alternating long fins, 25% Fan','Alternating long fins, 50% Fan','All long fins, minus both sides, 25% Fan', ...
    'All long fins, minus both sides, 50% Fan', 'Full plate short fins, 25% Fan', 'Full plate short fins, 50% Fan', ...
    'Location', 'best');
hold off;

%% Nu vs. Re

% short alternating
Re_25s = 37.085.*[mean(data5s.Re') mean(data10s.Re') mean(data20s.Re')];

% long alternating
Re_25L = 37.085.*[mean(data5L.Re') mean(data10L.Re') mean(data20L.Re')];

% long all but sides
Re_25AL = 36.324.*[mean(data5AL.Re') mean(data10AL.Re') mean(data20AL.Re')];

% all short
Re_25AS = 34.801.*[mean(data5AS.Re') mean(data10AS.Re') mean(data20AS.Re')];

std_Re_25s = 37.085.*[std(data5s.Re) std(data10s.Re) std(data20s.Re)];
std_Re_25L = 37.085.*[std(data5L.Re) std(data10L.Re) std(data20L.Re)];
std_Re_25AL = 36.324.*[std(data5AL.Re) std(data10AL.Re) std(data20AL.Re)];
std_Re_25AS = 34.801.*[std(data5AS.Re) std(data10AS.Re) std(data20AS.Re)];

figure(3)
hold on;

errorbar(Re_25s, Nu_25s, std_Nu_25s, std_Nu_25s, std_Re_25s, std_Re_25s, 'o-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(37.085.*mean(data50s.Re), mean(data50s.Nu), 'd-', 'Color', 'b', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(Re_25L, Nu_25L, std_Nu_25L, std_Nu_25L, std_Re_25L, std_Re_25L, 'o-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(37.085.*mean(data50L.Re), mean(data50L.Nu), 'd-', 'Color', 'r', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(Re_25AL, Nu_25AL, std_Nu_25AL, std_Nu_25AL, std_Re_25AL, std_Re_25AL, 'o-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(36.324.*mean(data50AL.Re), mean(data50AL.Nu), 'd-', 'Color', 'g', 'LineWidth', 1.5, 'MarkerSize', 8);
errorbar(Re_25AS, Nu_25AS, std_Nu_25AS, std_Nu_25AS, std_Re_25AS, std_Re_25AS, 'o-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);
plot(34.801.*mean(data50AS.Re), mean(data50AS.Nu), 'd-', 'Color', 'm', 'LineWidth', 1.5, 'MarkerSize', 8);

set(gca, 'XScale', 'log');
ylim([150,460]);
xlabel('Reynolds Number [unitless]'); ylabel('Nusselt Number [unitless]');
title('Four Pin Fin Layouts: Nusselt Number vs. Reynolds Number');
legend('Alternating short fins, 25% Fan', 'Alternating short fins, 50% Fan', ...
    'Alternating long fins, 25% Fan','Alternating long fins, 50% Fan','All long fins, minus both sides, 25% Fan', ...
    'All long fins, minus both sides, 50% Fan', 'Full plate short fins, 25% Fan', 'Full plate short fins, 50% Fan', ...
    'Location', 'best');
hold off;