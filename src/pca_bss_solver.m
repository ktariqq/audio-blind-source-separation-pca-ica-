function Zpca = pca_bss_solver(X_noisy)

[~, score, ~] = pca(X_noisy');

Zpca = score(:,1:2)';

end
