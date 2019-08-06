/// @description Move target

if(selected and mouse_check_button_pressed(mb_left)){
	var xx = snapToGrid(mouse_x);
	var yy = snapToGrid(mouse_y);
	
	// don't set target beyond max range
	if(point_distance(x, y, xx, yy) > towerRange){
		return;	
	}
	
	target.x = xx;
	target.y = yy;
	
	direction = point_direction(x, y, xx, yy);
	if(xx != x or yy != y){
		selected = false;
	}
}

// Inherit the parent event
event_inherited();

