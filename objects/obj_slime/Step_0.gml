/// @description Look for adjacent slimes and spread to them


var xDiff = sprite_width * irandom_range(-1, 1);
var yDiff = sprite_height * irandom_range(-1, 1);

while(xDiff == 0 and yDiff == 0){ // do not select own position
	xDiff = sprite_width * irandom_range(-1, 1);
	yDiff = sprite_height * irandom_range(-1, 1);
}

var slime = instance_place(x+xDiff, y+yDiff, obj_slime);

if (slime){
	slime.sprite_index = spr_slimeSelected;
	
	if(slime.stackSize+1 < self.stackSize){
		stackSize--;
		slime.stackSize++;
	}
}else{
	if (stackSize > 3){
		var slime = instance_create_layer(x+xDiff, y+yDiff, "Instances", obj_deadSlime);
		slime.stackSize = 1;
		self.stackSize--;
	}
}