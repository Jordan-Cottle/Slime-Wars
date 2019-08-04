/// @description Check for win condition
var playerSlime = 0;
var enemySlime = 0;

// count all slimes
with(obj_slime){
	switch(color){
		case playerColor:
			playerSlime++;
			break;
		default:
			enemySlime++;
			break;
	}
}

if(playerSlime <= 0){
	defeat = true;
} else if(enemySlime <= 0){
	victory = true;
}else{
	victory = false;
	defeat = false;
}

alarm[0] = room_speed;

