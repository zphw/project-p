/// @description Insert description here
// You can write your code in this editor

col = make_color_rgb(180, 225, 255);
hue = colour_get_hue(col);
sat = colour_get_saturation(col);
val = colour_get_value(col);
image_blend = make_color_hsv(hue,sat,val);
