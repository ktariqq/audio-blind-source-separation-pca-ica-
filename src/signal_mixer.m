function X_noisy = signal_mixer(S)

A = [1 0.5; 0.4 1];   % mixing matrix
X = A * S;

% Gaussian noise model
noise_power = 0.01 * var(X, 0, 2);
noise = sqrt(noise_power) .* randn(size(X));

X_noisy = X + noise;

end
