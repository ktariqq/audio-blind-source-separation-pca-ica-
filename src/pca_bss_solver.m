function Z_pca = pca_bss_solver(X_noisy)

[~, score, ~] = pca(X_noisy');
Z_pca = score(:,1:2)';

end
