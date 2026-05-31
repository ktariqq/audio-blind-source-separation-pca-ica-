clc; clear; close all;

%% Load + preprocess
[voice, music, fs] = signal_preprocess('dataset/raw/voice_source.wav', ...
                                       'dataset/raw/music_source.wav');

%% Mix + noise
[X_noisy, S, A] = signal_mixer(voice, music);

%% PCA
Zpca = pca_bss_solver(X_noisy);

%% ICA
Zica = ica_bss_solver(X_noisy, 2);

%% Evaluation
performance_evaluator(S, X_noisy, Zpca, Zica, fs);

%% Save outputs
audiowrite('results/audio_outputs/mixed_signals.wav', X_noisy', fs);
audiowrite('results/audio_outputs/pca_voice.wav', Zpca(1,:)', fs);
audiowrite('results/audio_outputs/pca_music.wav', Zpca(2,:)', fs);
audiowrite('results/audio_outputs/ica_voice.wav', Zica(1,:)', fs);
audiowrite('results/audio_outputs/ica_music.wav', Zica(2,:)', fs);
