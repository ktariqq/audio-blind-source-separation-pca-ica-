clc; clear; close all;

% Load + preprocess signals
[S, fs] = signal_preprocess();

% Mix signals + noise model
X_noisy = signal_mixer(S);

% PCA separation
Z_pca = pca_bss_solver(X_noisy);

% ICA separation
Z_ica = ica_bss_solver(X_noisy);

% Evaluation + visualization
performance_evaluator(S, X_noisy, Z_pca, Z_ica, fs);
