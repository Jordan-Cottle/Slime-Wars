/// localXtoGuiX(x, camOffset)

var xx = argument0;
var camOffset = argument1;

var camera = view_camera[0];
var cameraWidth = camera_get_view_width(camera);
var display_scale = display_get_gui_width()/cameraWidth;

if(camOffset){
	var cameraX = camera_get_view_x(camera);
	var pos = xx - cameraX;
}else{
	 var pos = xx;
}



return pos * display_scale;