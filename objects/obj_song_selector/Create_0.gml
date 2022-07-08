/// @description parse all songs info from json

json = "";
file = file_text_open_read("songs.json");

while(!file_text_eof(file)) {
	json += file_text_readln(file);
}

file_text_close(file);

data = json_parse(json);

// map id to objects
id_song_map = [
  snd_wings_of_piano,
  snd_last_step,
  snd_disorder
];

id_preview_spr_map = [
  spr_wings_of_piano_bg,
  spr_last_step_bg,
  spr_disorder_bg
];

id_song_obj_map = [
  obj_music_wings_of_piano,
  obj_music_last_step,
  obj_music_disorder
];

current_selection = global.current_selection;  // restore previous selection

preview_from = data[current_selection][$ "previewFromPos"];
preview_to = data[current_selection][$ "previewToPos"];

preview_song = audio_play_sound(id_song_map[current_selection], 10, false);
audio_sound_set_track_position(preview_song, preview_from);
