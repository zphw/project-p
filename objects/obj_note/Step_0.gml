/// @description fade out if bad

if (sprite_index == spr_note_bad) {
	image_alpha -= 0.1;
	if (image_alpha <= 0)
		instance_destroy();
}
