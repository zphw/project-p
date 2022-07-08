/// @description key press listener

// for debug purpose
/*
if (keyboard_check_pressed(vk_space))
    show_debug_message(string(audio_sound_get_track_position(global.game_music)));
*/

// check note type 1 upon key pressed once
if (keyboard_check_pressed(ord("A"))) {
	check_accuracy_1(global.queue_notes_1);
}

if (keyboard_check_pressed(ord("S"))) {
	check_accuracy_1(global.queue_notes_2);
}

if (keyboard_check_pressed(ord("K"))) {
	check_accuracy_1(global.queue_notes_3);
}

if (keyboard_check_pressed(ord("L"))) {
	check_accuracy_1(global.queue_notes_4);
}

// check note type 2 upon key pressed and hold
if (keyboard_check(ord("A"))) {
	check_accuracy_2(global.queue_notes_1);
}

if (keyboard_check(ord("S"))) {
	check_accuracy_2(global.queue_notes_2);
}

if (keyboard_check(ord("K"))) {
	check_accuracy_2(global.queue_notes_3);
}

if (keyboard_check(ord("L"))) {
	check_accuracy_2(global.queue_notes_4);
}

// update max combo
if (global.combo > global.max_combo)
    global.max_combo = global.combo;
	
if (keyboard_check_pressed(vk_escape)) {
	audio_stop_all();
	video_close();
	room_goto(rm_song_selection);
}
