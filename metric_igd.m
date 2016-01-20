% ------------------------------------------------------------------------%
% This script is used to sample some Pareto-optimal points on the PF of
% some established test problems (ZDT, DTLZ).
%
% Author:  Dr. Ke Li @ University of Birmingham
% Contact: keli.genius@gmail.com (http://www.cs.bham.ac.uk/~likw)
% Last modified: 01/20/2016
% ------------------------------------------------------------------------%

close all
clear
clc

format long

objDim      = 3;    % number of objectives
no_layers   = 2;    % number of layers (useful for many-objective cases)
sample_size = 5000; % expected sample size
problem_id  = 7;    % id = 1: ZDT1 | id = 2: ZDT2 | id = 3: ZDT3 | id = 4: DTLZ1
                    % id = 5: DTLZ2-DTLZ4 | id = 6: DTLZ5-DTLZ6 id = 7: DTLZ7
                 
% Specify the number of divisions on each layer
no_gaps = [3, 2];
shrink_factors = [1.0, 0.5];

W = samplingPF(objDim, no_layers, no_gaps, shrink_factors, sample_size, problem_id);

if objDim == 2
    plot(W(:, 1), W(:, 2), 'o');
elseif objDim == 3
    plot3(W(:, 1), W(:, 2), W(:, 3), 'o');
else
    parallelcoords(W);
end
