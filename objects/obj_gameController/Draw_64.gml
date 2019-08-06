/// @description Display win/loss message

if(victory){
	draw_text(room_width, room_height, "You win! Press R to restart or N to go to the next level!");	
}else if (defeat){
	draw_text(room_width, room_height, "You lose! Press R to restart!");	
}