function Z_ica = ica_bss_solver(X_noisy)

r = 2;
[Z_ica, ~, ~, ~] = fastICA(X_noisy, r);

end
