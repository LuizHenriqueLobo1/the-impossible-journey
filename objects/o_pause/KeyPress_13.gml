switch(menu_index) {

	case 0: {
		instance_destroy();
		break;
	}
	
	case 1: {
		room_goto(room1);
		break;
	}
	
	case 2: {
		room_goto(room_menu);
		break;
	}

	case 3: {
		game_end();
		break;
	}
}