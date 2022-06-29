if(place_meeting(x, y, o_boss)) {
	global.boss_life--;
}

if(place_meeting(x, y, o_boss) && (image_index != 0)) {
	while(place_meeting(x, y, o_boss)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	speed = 0;
	instance_change(o_hit_spark, true);
}