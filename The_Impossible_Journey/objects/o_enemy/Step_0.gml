#region MOVIMENTACAO

//Andar e trocar de direção
if(place_meeting(x+1, y, o_enemy_collider) || place_meeting(x-1, y, o_enemy_collider))
{
	direction += 180;
}

//Olhando para direção correta
if(direction == 0)
{
	image_xscale = -1;
} 
else
{ 
	image_xscale = 1; 
}

//Gravidade
var flr = place_meeting(x, y+1, o_wall)
if(!flr)
{
	vspd += GRV * massa;
}

#endregion

#region MORRE E MATA

//Morre ao player pular em cima
if (place_meeting(x, y, o_player))
{
	if (o_player.y < y-65)
	{
		with (o_player) vspd = -max_vspd / 3;
		instance_destroy();
		instance_create_layer(x, y, "Instances", o_enemy_died);
	}
	else
	{
		global.life = 0;
	}
}

#endregion