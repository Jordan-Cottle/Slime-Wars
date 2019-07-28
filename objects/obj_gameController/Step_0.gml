/// @description Player Input

// Allow player to select different color of slime with mouse wheel. For now
if(mouse_wheel_up()){
	colorSelection++;

} else if (mouse_wheel_down()){
	colorSelection--;
}

colorSelection = wrap(colorSelection, 0, 2);

color = global.colors[colorSelection];

// Allow user to contruct buildings

if(keyboard_check_pressed(ord("S")) or mouse_check_button_pressed(mb_left)){
	startConstruction(mouse_x, mouse_y, obj_spawnerConstruction, color);
}