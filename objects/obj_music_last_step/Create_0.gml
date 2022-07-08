
// load notes from json file
json = "";
file = file_text_open_read("last_step.json");

while(!file_text_eof(file)) {
	json += file_text_readln(file);
}

file_text_close(file);

data = json_parse(json);

// init
global.game_started = false;

json_pos = 0;
next_time_to_spwan = data[json_pos][$ "time"];
note_speed = data[json_pos][$ "speed"];

// delay music start
delay_sec = 2
alarm[0] = delay_sec * room_speed;
current_music_position = -delay_sec;

// create queues to store active notes on the screen
global.queue_notes_1 = ds_queue_create();
global.queue_notes_2 = ds_queue_create();
global.queue_notes_3 = ds_queue_create();
global.queue_notes_4 = ds_queue_create();
