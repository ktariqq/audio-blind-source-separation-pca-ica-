function performance_evaluator(S, X_noisy, Z_pca, Z_ica, fs)

t = (0:length(S)-1)/fs;

% ---- Waveforms ----
figure('Name','Signal Separation Comparison');

subplot(4,2,1); plot(t,S(1,:)); title('Original Voice');
subplot(4,2,2); plot(t,S(2,:)); title('Original Music');

subplot(4,2,3); plot(t,X_noisy(1,:)); title('Mixed Signal 1');
subplot(4,2,4); plot(t,X_noisy(2,:)); title('Mixed Signal 2');

subplot(4,2,5); plot(t,Z_ica(1,:)); title('ICA Output 1');
subplot(4,2,6); plot(t,Z_ica(2,:)); title('ICA Output 2');

subplot(4,2,7); plot(t,Z_pca(1,:)); title('PCA Output 1');
subplot(4,2,8); plot(t,Z_pca(2,:)); title('PCA Output 2');

% ---- Metrics ----
corr_ica_voice = corr(Z_ica(1,:)', S(1,:)');
corr_pca_voice = corr(Z_pca(1,:)', S(1,:)');

kurt_ica = kurtosis(Z_ica(1,:));
kurt_pca = kurtosis(Z_pca(1,:));

fprintf('\n=== PERFORMANCE METRICS ===\n');
fprintf('ICA Voice Correlation: %.4f\n', corr_ica_voice);
fprintf('PCA Voice Correlation: %.4f\n', corr_pca_voice);
fprintf('ICA Kurtosis: %.4f\n', kurt_ica);
fprintf('PCA Kurtosis: %.4f\n', kurt_pca);

end
