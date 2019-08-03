/// @description Draw base, then draw top in direction

if(selected){
	alpha = .5;	
}else{
	alpha = 1;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, drawColor, alpha);

draw_sprite_ext(spr_towerTurret, 0, x, y, image_xscale, image_yscale, direction, drawColor, alpha);
