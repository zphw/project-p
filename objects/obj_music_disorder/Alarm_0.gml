/// @description start countdown

video_started_play = true;
global.game_music = audio_play_sound(snd_disorder, 1, false);
video_resume();
video_seek_to(0.2);
audio_sound_gain(global.game_music, 0.7, 0);

global.game_started = true;
