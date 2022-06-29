alarm[0] = 120;

var x_ = o_lancador.x;
var y_ = o_lancador.y;

with(instance_create_layer(x_, y_, "Instances", o_enemy_bullet)) {
	speed = 15;
	direction = choose(90);
}