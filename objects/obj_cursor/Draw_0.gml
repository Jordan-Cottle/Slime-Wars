/// @description Draw sprite's based on selected mode
#macro previewAlpha 0.5 


switch(mode){
	case cursorMode.buildSpawner:
		draw_sprite_ext(spr_spawner, 0, x, y, image_xscale, image_yscale, direction, drawColor, previewAlpha);
		draw_text(x, y, global.spawnerCost);
		break;
	case cursorMode.buildTurret:
		draw_sprite_ext(spr_towerBase, 0, x, y, image_xscale, image_yscale, direction, drawColor, previewAlpha);
		break;
	case cursorMode.buildWall:
		draw_sprite_ext(spr_wall, 0, x, y, image_xscale, image_yscale, direction, drawColor, previewAlpha);
		break;
}

if(mode != cursorMode.select and !canBuild){
	draw_sprite(spr_cannotBuild, 0, x, y);
}

// Inherit the parent event
event_inherited();

