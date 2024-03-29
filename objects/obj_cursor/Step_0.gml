/// @description Follow mouse, handle player input

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
canBuild = onSlime;

// can't build on top of another structure
if(collision_circle(x, y, 1, obj_structure, false, true)){
	canBuild = false;	
}

// spawners require a larger circle check
if(mode == cursorMode.buildSpawner and collision_circle(x, y, 10, obj_structure, false, true)){
	canBuild = false;
}

// build structure when mouse is clicked
if(mouse_check_button_pressed(mb_left) and canBuild){
	switch(mode){
		case cursorMode.buildSpawner:
			startConstruction(x, y, obj_spawnerConstruction, color);
			updateGlobalSpawnerCost(spawnerCostIncrement);
			break;
		case cursorMode.buildTurret:
			startConstruction(x, y, obj_towerConstructionSite, color);
			break;
		case cursorMode.buildWall:
			startConstruction(x, y, obj_wallConstructionSite, color);
			break;
	}
}