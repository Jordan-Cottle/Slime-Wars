/// @description Move target

if(selected and mouse_check_button_pressed(mb_left)){
	var xx = snapToGrid(mouse_x);
	var yy = snapToGrid(mouse_y);
	target.x = xx;
	target.y = yy;
	
	direction = point_direction(x, y, xx, yy);
	selected = false;
}

// Inherit the parent event
event_inherited();

