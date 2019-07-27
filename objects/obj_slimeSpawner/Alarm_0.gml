/// @description Spawn more slime!


var slime = instance_place(x, y, obj_slime);

if(slime){
	slime.size += spawnRate;	
}else{
	spawnSlime(x, y, color);
}

alarm[0] = spawnInterval * room_speed;