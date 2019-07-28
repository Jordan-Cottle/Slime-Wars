/// @description Draw health if damaged
if(damaged){
	draw_healthbar((x+1)*2, (y+13)*2, (x+13)*2, (y+15)*2,
		(hp / maxHp)*100, c_black, c_red, c_green,
		0, false, true);
}
