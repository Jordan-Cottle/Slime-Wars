/// @description Follow mouse

x = snapToGrid(mouse_x);
y = snapToGrid(mouse_y);

// allow player to select which action to perform with cursor using mouse wheel
if(mouse_wheel_up()){
	mode++;
}else if(mouse_wheel_down()){
	mode--;	
}

mode = wrap(mode, 0, 3)

// Allow user to select specific modes using keyboard
if (keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("1"))){
	mode = cursorMode.select;
}else if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("2"))) {
	mode = cursorMode.buildSpawner;
}else if (keyboard_check_pressed(ord("T")) or keyboard_check_pressed(ord("3"))){
	mode = cursorMode.buildTurret;	
}else if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("4"))){
	mode = cursorMode.buildWall;	
}

var slime = instance_place(x, y, obj_slime);

onSlime = slime and slime.color == self.color;

// only allow building on player's slime
if(!onSlime){
	return; 	
}

// perform action when mouse is clicked
if(mouse_check_button_pressed(mb_left)){
	switch(mode){
		case cursorMode.select:
			break; // do nothing (towers handle their own selection)
		case cursorMode.buildSpawner:
			startConstruction(x, y, obj_spawnerConstruction, color);
			break;
		case cursorMode.buildTurret:
			startConstruction(x, y, obj_towerConstructionSite, color);
			break;
		case cursorMode.buildWall:
			startConstruction(x, y, obj_wallConstructionSite, color);
			break;
	}
}