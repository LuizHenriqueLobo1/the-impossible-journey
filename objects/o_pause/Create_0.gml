menu_x = camera_get_view_width(0)  / 2;
menu_y = camera_get_view_height(0) / 2 - 50;
button_h = 32;

//Botões
button[0] = "Continue";
button[1] = "New Game";
button[2] = "Back to Menu"
button[3] = "Quit";

buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;