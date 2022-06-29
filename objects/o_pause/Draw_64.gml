var i = 0;

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, camera_get_view_width(0), camera_get_view_height(0), 0);

repeat(buttons)
{
	draw_set_alpha(1);
	draw_set_font(font1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	if(menu_index == i)
	{
		draw_set_color(c_red);
	}
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}