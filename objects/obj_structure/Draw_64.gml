/// @description Draw health if damaged
if(damaged){
	draw_healthbar(x+1, y+13, x+13, y+15,
		(hp / maxHp)*100, c_black, c_red, c_green,
		0, false, true);
}
