//Segunda Fase do Boss

alarm[0] = 120;

if(global.boss_life <= 8) {

	var x_ = o_boss.x;
	var y_ = o_boss.y - 100;
	
	with(instance_create_layer(x_, y_, "Instances", o_enemy_bullet)) {
	speed = 10;
	direction = choose(0, 180);
	}
}