/// @description Interact with slime

var slime = instance_position(mouse_x, mouse_y, obj_slime);
if(mouse_check_button(mb_left)){
	if(slime){
		slime.size--;
	}
}else if(mouse_check_button(mb_right)){
	if(slime){
		slime.size++;	
	}else{
		spawnSlime(snapToGrid(mouse_x),snapToGrid(mouse_y), colors[selection]);
	}
}

if(mouse_wheel_up()){
	selection++;
	if(selection > 2){
		selection=0;	
	}
} else if (mouse_wheel_down()){
	selection--;
	if(selection < 0){
		selection=2;	
	}	
}
