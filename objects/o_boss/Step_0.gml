#region MOVIMENTACAO

//Andar e trocar de direção
if(place_meeting(x+1, y, o_enemy_collider) || place_meeting(x-1, y, o_enemy_collider))
{
	direction += 180;
}

//Gravidade
var flr = place_meeting(x, y+1, o_wall)
if(!flr)
{
	vspd += GRV * massa;
}


//Pulo
var flr2 = place_meeting(x+1, y, o_enemy_collider);

if(flr2)
{
	vspd = -max_vspd * massa;
}

#endregion

#region MORRE E MATA

//Morte do boss
if(global.boss_life <= 0)
{
	instance_destroy();
	global.boss_state = true;
}

//Mata o player
if(place_meeting(x, y, o_player))
{
	global.life = 0;
}

#endregion