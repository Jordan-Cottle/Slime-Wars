/// @description Display current color selection

var color = global.colors[selection];
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

draw_sprite(spr_selected, 0, snapToGrid(mouse_x), snapToGrid(mouse_y));