var ww = window_get_width();
var hh = window_get_height();


draw_sprite_ext(global.office[global.lvl],0,ww/2,hh/2,4,4,0,c_white,1);

draw_set_alpha(1);
draw_set_color(c_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(font);

var c = c_white;
var c1 = c_gray;

var height = string_height("plop");
var width = 20 + (string_width(line_part) / 2);

draw_rectangle_color(x + 200 - width + 4, y - 150 - height + 4, x + 200 + width + 4, y - 150 + 4 + (2 * height),c1,c1,c1,c1,false);
draw_rectangle_color(x + 200 - width, y - 150 - height, x + 200 + width, y - 150 + 2 * height,c,c,c,c,false);

draw_text(x + 200,y - 150, line_part);