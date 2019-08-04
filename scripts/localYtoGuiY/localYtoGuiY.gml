// localYtoViewportY(y)

var yy = argument0;
var camOffset = argument1;

var camera = view_camera[0];
var cameraHeight = camera_get_view_height(camera);
var display_scale = display_get_gui_height()/cameraHeight;

if(camOffset){
	var cameraY = camera_get_view_y(camera);
	var pos = yy - cameraY; 
}else{
	var pos = yy;
}

return pos * display_scale;
