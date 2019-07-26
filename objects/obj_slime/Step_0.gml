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
while(xDiff == 0 and yDiff == 0){ // do not select own position
	xDiff = sprite_width * irandom_range(-1, 1);
	yDiff = sprite_height * irandom_range(-1, 1);
}

var slime = instance_place(x+xDiff, y+yDiff, obj_slime);

if (slime){
	if (debug){
		slime.sprite_index = spr_slimeSelected;
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
		var slime = instance_create_layer(x+xDiff, y+yDiff, "Instances", obj_deadSlime);
		slime.size = 1;
		slime.color = self.color;
		self.size--;
	}
}

if(size <= 0){
	instance_destroy();	
}