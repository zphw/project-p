/// @description Draw result screen

// background
draw_set_alpha(0.2);

draw_sprite_stretched(global.image_to_display, 0, 0, 0, room_width, room_height);

draw_set_alpha(1);

// main image
draw_sprite_stretched(global.image_to_display, 0, room_width/2-614.4/2, room_height/2-345.6/2-100, 614.4, 345.6);

draw_set_halign(fa_center);
draw_set_font(fnt_game_text_lg);

// draw letter grade
if (global.score == 1000000)
	draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "W", c_orange, c_orange, c_yellow, c_yellow, 0.9);
else if (global.score >= 990000)
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "V", c_aqua, c_aqua, c_aqua, c_aqua, 0.9);
else if (global.score >= 950000)
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "S", c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 0.9);
else if (global.score >= 890000)
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "A", c_lime, c_lime, c_lime, c_lime, 0.9);
else if (global.score >= 795000)
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "B", c_white, c_white, c_white, c_white, 0.9);
else if (global.score >= 695000)
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "C", c_white, c_white, c_white, c_white, 0.9);
else
    draw_text_color(room_width/2-255, room_height/2-150+345.6-88, "D", c_white, c_white, c_white, c_white, 0.9);

// score
draw_text(room_width/2-95, room_height/2-150+345.6-88, string_repeat("0", 7-string_length(string(int64(global.score)))) + string(int64(global.score)));

// max combo
draw_set_font(fnt_game_text_sm);
draw_text(room_width/2+160, room_height/2-150+345.6-75, "Max combo: " + string(global.max_combo));

draw_text(room_width/2, room_height-140, "Press Enter to Continue");
