/// spawnSlime(x, y, color)

var spawnX = argument0;
var spawnY = argument1;
var color = argument2;

var slime = instance_create_layer(spawnX, spawnY, "lyr_slime", obj_slime);
slime.color = color;

switch(color){
	case "red":
		slime.sprite_index = spr_slimeRed;
		break;
	case "blue":
		slime.sprite_index = spr_slimeBlue;
		break;
	case "green":
		slime.sprite_index = spr_slimeGreen;
		break;
}