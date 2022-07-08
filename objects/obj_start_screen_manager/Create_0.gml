
global.tutorial = false;
global.current_selection = 0;

background_song = audio_play_sound(snd_start_screen, 10, true);

var layerId = layer_get_id("Background");
var backgroundId = layer_background_get_id(layerId);

layer_background_alpha(backgroundId, 0.1);
