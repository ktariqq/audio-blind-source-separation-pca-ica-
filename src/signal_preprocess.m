function [S, fs] = signal_preprocess()

[voice, fs1] = audioread('../dataset/raw/voice_source.wav');
[music, fs2] = audioread('../dataset/raw/music_source.wav');

fs = fs1;

minLen = min(length(voice), length(music));

voice = voice(1:minLen);
music = music(1:minLen);

voice = voice(:)';
music = music(:)';

% normalization
voice = voice / max(abs(voice));
music = music / max(abs(music));

% stack sources
S = [voice; music];

% standardization
S = S - mean(S, 2);
S = S ./ std(S, 0, 2);

end
