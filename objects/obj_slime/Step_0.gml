/// @description Look for adjacent slimes and spread to them
spread();

var target = findAdjacent(obj_structure, noone);

if(size <= 0){
	instance_destroy();	
}