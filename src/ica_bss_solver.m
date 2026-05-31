function Zica = ica_bss_solver(X_noisy, r)

[Zica, ~, ~, ~] = fastICA(X_noisy, r);

end
