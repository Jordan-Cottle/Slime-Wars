/// heightAt(x, y)
var xx = argument0;
var yy = argument1;

// barriers are super high height
if(!place_empty(xx, yy, obj_barrier)){
	return 100;	
}

var layerMap = layer_tilemap_get_id("lyr_terrain");
var tile = tilemap_get_at_pixel(layerMap, xx, yy);
var height = 0;

// if tile present at space, return it's height value
if(tile){
	height = tile*3;
	if(height > maxHeight){
		show_debug_message(height);	
	}
}

if(!place_empty(xx, yy, obj_wall)){
	height += wallHeight;	
}

// nothing in space, no height
return height;