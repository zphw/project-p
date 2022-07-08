/// @description start countdown

global.game_music = audio_play_sound(snd_last_step, 1, false);
audio_sound_gain(global.game_music, 0.7, 0);

global.game_started = true;
