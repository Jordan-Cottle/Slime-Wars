/// Look for slimes to construct self
var slime = findAdjacent(obj_slime, noone);

if(slime and slime.color == self.color){
	var newProgress = min(cost - progress, floor(slime.size/2), maxBuild);
	progress += newProgress;
	slime.size -= newProgress;
}

if(progress >= cost){
	instance_change(obj_finished, false);
	alarm[0] = spawnInterval * room_speed;
	bonusSlime = 0;
	
}else{
	// scale transparency up with progress of construction
	alpha = max((progress / cost) - minAlpha, 0) + minAlpha;	
}

hp = progress;