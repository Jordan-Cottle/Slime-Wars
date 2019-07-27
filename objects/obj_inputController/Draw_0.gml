/// @description Display current color selection

var color = colors[selection];
switch(color){
	case "red":
		sprite_index = spr_slimeRed;
		break;
	case "blue":
		sprite_index = spr_slimeBlue;
		break;
	case "green":
		sprite_index = spr_slimeGreen;
		break;
}

draw_self();