/// @description Look for slimes to construct self

var slime = findAdjacent(obj_slime, noone);

if(slime and slime.color == self.color){
	var newProgress = min(cost - progress, slime.size/2, maxBuild);
	progress += newProgress;
	slime.size -= newProgress;
}

if(progress >= cost){
	var c = color;
	instance_change(obj_finished, true);
	// color information needs to be set on 'new' structure
	color = c;
	drawColor = selectColor(c);
}else{
	// scale transparency up with progress of construction
	alpha = max((progress / cost) - minAlpha, 0) + minAlpha;	
}

hp = progress;