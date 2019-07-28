/// @description Check for win condition
var redCount = 0;
var greenCount = 0;
var blueCount = 0;

// count all slimes
with(obj_slime){
	switch(color){
		case "red":
			redCount++;
			break;
		case "blue":
			blueCount++;
			break;
		case "green":
			greenCount++;
			break;
	}
}

if(greenCount <= 0){
	defeat = true;
} else if(redCount <= 0 and blueCount <= 0){
	victory = true;
}else{
	victory = false;
	defeat = false;
}

alarm[0] = room_speed;

