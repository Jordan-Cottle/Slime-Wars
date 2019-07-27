/// @description Select color

var drawColor;
switch(color){
	case "red":
		drawColor = c_red;
		break;
	case "blue":
		drawColor = c_blue;
		break;
	case "green":
		drawColor = c_green;
		break;
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, direction, drawColor, 1);
