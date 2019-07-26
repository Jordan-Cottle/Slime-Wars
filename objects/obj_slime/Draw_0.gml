/// @description
var deltaAlpha = 1 - minAlpha;
var sizeDelta = maxSize - size;
var transparency = deltaAlpha - (sizeDelta * (deltaAlpha/maxSize));

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


draw_sprite_ext(sprite_index, -1, x, y, 1, 1, direction, c_white, transparency + minAlpha);

if(debug){
	draw_text(x, y, string(size));
}
