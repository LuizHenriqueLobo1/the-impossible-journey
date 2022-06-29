function scr_death() {
	if(global.checkpointR != 0)
	{
		room_goto(global.checkpointR);
		global.life += 1; 
	}
	else
	{
		room_goto(room_menu);
	}
}