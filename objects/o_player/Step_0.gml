#region CONTROLES

var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
var flr = place_meeting(x, y+1, o_wall);
var shoot = keyboard_check_pressed(ord("K"));

#endregion

#region MOVIMENTACAO

//Movimentação
hspd = (right - left) * max_hspd;

//Gravidade
if(!flr)
{
	if(vspd < max_vspd * 2)
	{
		vspd += GRV * massa;
	}
}

#endregion

#region MORTE

if(global.life <= 0)
{
	scr_death();
}

#endregion

#region ESTADOS

//Estados
switch(state)
{
	case "iddle":
	{
		//Comportamento do estado
		sprite_index = s_player_iddle;
		
		//Troca de estado
		if(right || left)
		{
			state = "moving";
		}
		else if(jump)
		{
			state = "jumping";
			vspd = -max_vspd;
		}
		else if(vspd > 0)
		{
			state = "falling";
		}
		break;
	}
	
	case "moving":
	{
		//Comportamento do estado
		sprite_index = s_player_run;
		
		//Troca de estado
		if(abs(hspd) < 0.1)
		{
			state = "iddle";
		}
		else if(jump)
		{
			state = "jumping";
			vspd = -max_vspd;
		}
		else if(vspd > 0)
		{
			state = "falling";
		}
		break;
	}
	
	case "jumping":
	{
		//Comportamento do estado
		if(vspd > 0)
		{
			state = "falling";
		}
		else
		{
			sprite_index = s_player_jump;
			
			//Corrigindo animação
			if(image_index > image_number-1)
			{
				image_index = image_number-1;
			}
		}		
		//Troca de estado
		if(flr)
		{
			state = "iddle";
			vspd = 0;
		}
		break;
	}
	
	case "falling":
	{
		//Comportamento do estado
		sprite_index = s_player_fall;
		
		//Troca de estado
		if(flr)
		{
			state = "iddle";
			vspd = 0;
		}
	}
}

#endregion

#region TIRO

//Variáveis
var _xx = x + lengthdir_x(15, image_angle);
var y_offset = (y - 30) + lengthdir_y(-20, image_angle);

//Criando tiro
if(shoot and global.bullets > 0)
{
	with(instance_create_layer(_xx, y_offset, "Shoot", o_shoot))
	{
		global.bullets--;
		speed = 18;
		direction = -90 + 90 * other.image_xscale;
		image_angle = direction;
	}
}

#endregion

#region PAUSE

// Ativar pause
var pause = keyboard_check_pressed(vk_escape);

// Criar instância do pause
if(pause && !instance_exists(o_pause)) {
	last_x = x;
	last_y = y;
	instance_create_layer(0, 0, "Instances", o_pause);
}

if(instance_exists(o_pause)) {
	state = "iddle";
	x = last_x;
	y = last_y;
	image_alpha = 0;
	max_hspd = 0;
	max_vspd = 0;
	flr = false;
} else {
	image_alpha = 1;
	max_hspd = 6;
	max_vspd = 12;
}

#endregion
