/// @description Follow mouse

x = snapToGrid(mouse_x);
y = snapToGrid(mouse_y);


// Allow user to contruct buildings
if(keyboard_check_pressed(ord("S")) or mouse_check_button_pressed(mb_left)){
	startConstruction(x, y, obj_spawnerConstruction, playerColor);
}