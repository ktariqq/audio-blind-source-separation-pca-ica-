function [voice, music, fs] = signal_preprocess(vpath, mpath)

[voice, fs1] = audioread(vpath);
[music, fs2] = audioread(mpath);

fs = fs1;

minLen = min(length(voice), length(music));

voice = voice(1:minLen);
music = music(1:minLen);

voice = voice(:)';
music = music(:)';

% Normalize [-1,1]
voice = voice / max(abs(voice));
music = music / max(abs(music));

% Standardize
voice = (voice - mean(voice)) / std(voice);
music = (music - mean(music)) / std(music);

end
