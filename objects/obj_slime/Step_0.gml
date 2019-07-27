/// @description Look for adjacent slimes and spread to them
var xDiff = 0;
var yDiff = 0;

// do not select own position or terrain
while(xDiff == 0 and yDiff == 0 or !place_empty(x+xDiff, y+yDiff, obj_terrain)){ 
	xDiff = sprite_width * irandom_range(-1, 1);
	yDiff = sprite_height * irandom_range(-1, 1);
}

var slime = instance_place(x+xDiff, y+yDiff, obj_slime);


if (slime){
	if (debug){
		slime.selected = true;
	}
	
	if(slime.color == self.color){ // spread slime to same color
		if(slime.size+1 < self.size){
			size--;
			slime.size++;
		}
	}else{ // destroy other color
		size--;
		slime.size--;
	}
}else{
	if (size > 2){
		spawnSlime(x+xDiff, y+yDiff, color);
		size--;
	}
}

if(size <= 0){
	instance_destroy();	
}