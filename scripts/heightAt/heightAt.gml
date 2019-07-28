/// heightAt(x, y)

// barriers are super high height
if(!place_empty(argument0, argument1, obj_barrier)){
	return 100;	
}

var layerMap = layer_tilemap_get_id("lyr_terrain");
var tile = tilemap_get_at_pixel(layerMap, argument0, argument1);

// if tile present at space, return it's height value
if(tile){
	return tile*2;	
}

// nothing in space, no height
return 0;