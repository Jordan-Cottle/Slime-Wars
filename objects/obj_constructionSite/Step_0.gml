/// @description Look for slimes to construct self

var slime = findAdjacent(obj_slime, noone);

if(slime){
	var newProgress = max(cost - progress, slime.size/2);
	progress += newProgress;
	slime.size -= newProgress;
}

if(progress >= cost){
	instance_change(obj_finished, true);
}else{
	// scale transparency up with progress of construction
	alpha = max((progress / cost) - minAlpha, 0) + minAlpha;	
}