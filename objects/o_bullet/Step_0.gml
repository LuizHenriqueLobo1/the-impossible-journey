image_angle += 1;

if(place_meeting(x, y, o_player))
{
	global.bullets += 20;
	instance_destroy();
}