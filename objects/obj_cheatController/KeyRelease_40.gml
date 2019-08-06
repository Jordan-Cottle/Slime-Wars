/// @description Decrease spawn rate of enemy slime

with(obj_slimeSpawner){
	if(color != playerColor){
		bonusSlime = max(0, bonusSlime-4);
	}
		
}
