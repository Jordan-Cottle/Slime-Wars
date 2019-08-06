/// @description Increase enemy spawn rate

with(obj_slimeSpawner){
	if(color != playerColor){
		bonusSlime++;	
	}
}

alarm[1] = room_speed * difficultyInterval;
