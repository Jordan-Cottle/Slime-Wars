/// spawnSlime(x, y, color, size)

var spawnX = argument0;
var spawnY = argument1;
var color = argument2;
var size = argument3;

var slime = instance_create_layer(spawnX, spawnY, "lyr_slime", obj_slime);
slime.color = color;
slime.drawColor = selectColor(color);
slime.size = size;
return slime;