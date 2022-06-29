tempo -= 1;

if(tempo == 0){
	instance_destroy();
	tempo = 8;
}

alarm[0] = 10;