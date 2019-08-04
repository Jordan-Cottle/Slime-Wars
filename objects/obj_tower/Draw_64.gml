/// @description Draw range indicator

if(selected){
	draw_circle(localXtoGuiX(x,true), localYtoGuiY(y, true), towerRange, true);	
}

// Inherit the parent event
event_inherited();

