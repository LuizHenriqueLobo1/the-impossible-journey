if(instance_exists(o_pause)) {
		draw_set_color(c_white);
} else {
		draw_set_color(c_black);
}

if((room != room_menu) && (room != room_options) && (room != room_credits)) {
	draw_sprite(s_skull_counter, true, 952, 50);
	draw_set_font(font1);
	draw_text(1000, 25, contador);
}
