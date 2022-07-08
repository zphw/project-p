
draw_set_halign(fa_center);

// draw judgement line
draw_line(0, global.judgement_line_y, room_width, global.judgement_line_y);

// draw score and combo

draw_set_font(fnt_game_text_lg);

if (global.combo >= 5)
    draw_text(room_width / 2, 30, "Combo " + string(global.combo));

draw_set_font(fnt_game_text);

draw_text(room_width-100, 10, string_repeat("0", 7-string_length(string(int64(global.score)))) + string(int64(global.score)));

// draw key names
for (var i = 1; i <= 4; i++)
    draw_text(i*278, global.judgement_line_y-40, key_names[i-1]);
