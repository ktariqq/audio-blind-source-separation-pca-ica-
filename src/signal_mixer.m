function [X_noisy, S, A] = signal_mixer(voice, music)

S = [voice; music];

A = [1 0.5;
     0.4 1];

X = A * S;

% Gaussian noise (same as your original code)
noise_power = 0.01 * var(X, 0, 2);
noise = sqrt(noise_power) .* randn(size(X));

X_noisy = X + noise;

end
