function performance_evaluator(S, X_noisy, Zpca, Zica, fs)

t = (0:length(S)-1) / fs;

PURPLE = [138 43 226] / 255;

%% PLOTS
figure('Color','white');

subplot(4,2,1); plot(t, S(1,:), 'Color', PURPLE); title('Original Voice');
subplot(4,2,2); plot(t, S(2,:), 'Color', PURPLE); title('Original Music');

subplot(4,2,3); plot(t, X_noisy(1,:), 'Color', PURPLE); title('Mixed 1');
subplot(4,2,4); plot(t, X_noisy(2,:), 'Color', PURPLE); title('Mixed 2');

subplot(4,2,5); plot(t, Zica(1,:), 'Color', PURPLE); title('ICA Voice');
subplot(4,2,6); plot(t, Zica(2,:), 'Color', PURPLE); title('ICA Music');

subplot(4,2,7); plot(t, Zpca(1,:), 'Color', PURPLE); title('PCA Voice');
subplot(4,2,8); plot(t, Zpca(2,:), 'Color', PURPLE); title('PCA Music');

%% METRICS
corr_ica_voice = corr(Zica(1,:)', S(1,:)');
corr_pca_voice = corr(Zpca(1,:)', S(1,:)');
corr_ica_music = corr(Zica(2,:)', S(2,:)');
corr_pca_music = corr(Zpca(2,:)', S(2,:)');

kurt_ica_voice = kurtosis(Zica(1,:));
kurt_pca_voice = kurtosis(Zpca(1,:));
kurt_ica_music = kurtosis(Zica(2,:));
kurt_pca_music = kurtosis(Zpca(2,:));

fprintf('\n--- Correlation ---\n');
fprintf('ICA Voice: %.3f\n', corr_ica_voice);
fprintf('PCA Voice: %.3f\n', corr_pca_voice);

fprintf('\n--- Kurtosis ---\n');
fprintf('ICA Voice: %.3f\n', kurt_ica_voice);
fprintf('PCA Voice: %.3f\n', kurt_pca_voice);

end
