/// @description Draw health if damaged
if(damaged){
	var guiX = localXtoGuiX(x-6, true);
	var guiY = localYtoGuiY(y+6, true);
	draw_healthbar(guiX, guiY, guiX + localXtoGuiX(12, false), guiY + localYtoGuiY(2, false),
		(hp / maxHp)*100, c_black, c_red, c_green,
		0, false, true);
}
