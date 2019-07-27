/// heightAt(x, y)

var target = instance_place(argument0, argument1, obj_barrier);
var layerMap = layer_tilemap_get_id("lyr_terrain");
var tile = tilemap_get_at_pixel(layerMap, argument0, argument1);

if(tile){
	return tile * 4;	
}

return 0;