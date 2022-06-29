//Sistemas de colisão

//Variáveis
var _hspd = sign(hspd);
var _vspd = sign(vspd);

//Colisão horizontal
repeat(abs(hspd))
{
	if(place_meeting(x+_hspd, y, o_wall))
	{
		hspd = 0;
		break;
	}
	x += _hspd;
}

//Colisão vertical
repeat(abs(vspd))
{
	if(place_meeting(x, y+_vspd, o_wall))
	{
		vspd = 0;
		break;
	}
	y += _vspd;
}