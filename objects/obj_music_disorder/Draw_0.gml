/// @description draw background illustration

draw_set_alpha(0.35);

var video_data = video_draw();

var status = video_data[0];
if (status == 0) {
	var surf = video_data[1];
	draw_surface_stretched(surf, 0, 0, room_width, room_height);
}

if (!video_started_play) {
	video_pause();
	draw_sprite_stretched(spr_disorder_bg, 0, 0, 0, room_width, room_height);
}

draw_set_alpha(1);
