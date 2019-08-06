/// @description Room restart

show_debug_message(string(room));

if((victory or defeat) and keyboard_check(ord("R"))){
	room_restart();	
}

if(victory and keyboard_check_pressed(ord("N"))){
	room = wrap(room+1, room_first, room_last);
}