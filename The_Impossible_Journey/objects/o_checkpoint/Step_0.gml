image_angle += 1;

if(place_meeting(x, y, o_player))
{
	global.checkpoint  = id;
	global.checkpointX = x;
	global.checkpointY = y;
	global.checkpointR = room;
	global.life = 4;
}

if(global.checkpointR == room)
{
	if(global.checkpoint == id)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}