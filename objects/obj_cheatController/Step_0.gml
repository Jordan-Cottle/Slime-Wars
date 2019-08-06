/// @description Cheats

if(keyboard_check(vk_shift) and keyboard_check(vk_control) and keyboard_check_pressed(ord("C"))){
	active = !active;	
}

// only process cheats after being activated
if(!active){ 
	return;	
}

var slime = instance_position(mouse_x, mouse_y, obj_slime);
if(mouse_check_button(mb_left)){
	if(slime){
		slime.size--;
	}
}else if(mouse_check_button(mb_right)){
	if(slime){
		slime.size++;	
	}else{
		spawnSlime(snapToGrid(mouse_x),snapToGrid(mouse_y), playerColor, 25);
	}
}

if(keyboard_check_pressed(ord("R"))){
	room_restart();	
}

if(keyboard_check_pressed(ord("N"))){
	room = wrap(room+1, room_first, room_last);
}