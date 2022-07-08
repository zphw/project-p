
// draw dimmed background
draw_set_alpha(0.2);
draw_sprite_stretched(id_preview_spr_map[current_selection], 0, 0, 0, room_width, room_height);
draw_set_alpha(1);

draw_set_font(fnt_game_song_name);
draw_set_halign(fa_left);

// draw arrow pointing to the current song
// draw all songs' name and level
for (var i = 0; i < array_length(data); i++) {
	if (current_selection == i)
	    draw_sprite(spr_right_arrow, 0, 80, 300+52*i);

	draw_text(155, 300+55*i, data[i][$ "name"]);
	draw_text(400, 300+55*i, "Lv." + string(data[i][$ "level"]));
}

// draw currently selected song illustration
draw_sprite_stretched(id_preview_spr_map[current_selection], 0, 590, room_height/2-135, 614.4, 345.6);
