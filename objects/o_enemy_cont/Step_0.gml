x = o_player.x;
y = o_player.y;

if(global.enemy_cont == 2) {
	instance_create_layer(x, y-50, "Instances", o_arco_iris);
}