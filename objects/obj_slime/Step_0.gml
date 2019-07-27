/// @description Look for adjacent slimes and spread to them
var flowDelay = maxFlowDelay - size; // thicker slime flows faster
if(stepCount < flowDelay){
	stepCount++;
	return;
}else{
	stepCount = 0;	
}

var xDiff = 0;
var yDiff = 0;

// do not select own position
while(xDiff == 0 and yDiff == 0){ 
	xDiff = sprite_width * irandom_range(-1, 1);
	yDiff = sprite_height * irandom_range(-1, 1);
}

var slime = instance_place(x+xDiff, y+yDiff, obj_elevation);

if (slime){
	if(slime.object_index == obj_terrain){
		return; // do nothing with terrain	
	}
	
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