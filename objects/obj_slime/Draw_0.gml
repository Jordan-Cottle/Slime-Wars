/// @description
var deltaAlpha = 1 - minAlpha;
var sizeDelta = maxHeight - height;
var transparency = deltaAlpha - (sizeDelta * (deltaAlpha/maxHeight));

draw_sprite_ext(sprite_index, -1, x, y, 1, 1, direction, c_white, transparency + minAlpha);

if(debug){
	draw_text(x, y, string(size));
}
