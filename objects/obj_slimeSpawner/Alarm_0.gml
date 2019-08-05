/// @description Spawn more slime!
var slime = instance_place(x, y, obj_slime);

if(slime and slime.color == self.color){
	slime.size += spawnRate;	
}else{
	spawnSlime(x, y, color, spawnRate);
}

alarm[0] = spawnInterval * room_speed;