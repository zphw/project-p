/// @description key press listener

// only play the preview fragment of song
if (audio_sound_get_track_position(preview_song) >= preview_to) {
	audio_stop_sound(preview_song);
	preview_song = audio_play_sound(id_song_map[current_selection], 10, false);
    audio_sound_set_track_position(preview_song, preview_from);
}

if (keyboard_check_pressed(vk_down)) {
	if (current_selection + 1 < array_length(data)) {
		current_selection++;
		
		audio_stop_sound(preview_song);
		
		preview_from = data[current_selection][$ "previewFromPos"];
		preview_to = data[current_selection][$ "previewToPos"];
		preview_song = audio_play_sound(id_song_map[current_selection], 10, false);
		audio_sound_set_track_position(preview_song, preview_from);
	}
}

if (keyboard_check_pressed(vk_up)) {
	if (current_selection - 1 >= 0)
	    current_selection--;
		
		audio_stop_sound(preview_song);
		
		preview_from = data[current_selection][$ "previewFromPos"];
		preview_to = data[current_selection][$ "previewToPos"];
		preview_song = audio_play_sound(id_song_map[current_selection], 10, false);
		audio_sound_set_track_position(preview_song, preview_from);
}

global.current_selection = current_selection;  // remember previous selection

if (keyboard_check_pressed(vk_enter)) {
	audio_stop_sound(preview_song);
	global.note_full_score = 1000000 / data[current_selection][$ "total_notes"];
	global.song_to_play = id_song_obj_map[current_selection];
	room_goto(rm_tutorial);
}
