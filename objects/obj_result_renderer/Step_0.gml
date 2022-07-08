
if (keyboard_check_pressed(vk_enter)) {
	audio_stop_sound(background_song);
	room_goto(rm_song_selection);
}
