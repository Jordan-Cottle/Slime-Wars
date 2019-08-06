/// @description Room restart

if((victory or defeat) and keyboard_check(ord("R"))){
	room_restart();	
}

if(victory and keyboard_check(ord("N"))){
	if(room == room_last){
		room_goto(room_first);
	}else{
		room_goto_next();	
	}
}