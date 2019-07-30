/// spread()
var slime = findAdjacent(obj_slime, obj_barrier);

// check multiple spaces to create tendencies
var checks = 1;
while(slime and slime.size >= self.size and checks < spreadChecks){
	slime = findAdjacent(obj_slime, obj_barrier);
	if(slime and slime.color != self.color){ // prioritize enemy slimes
		break;	
	}
	checks++;
}

if (slime){
	if(slime.color == self.color){ // spread slime to same color
		if(self.size >= slime.size){
			var diff = irandom_range(1,self.size - slime.size); // move at least one
			size -= diff;
			slime.size += diff;
		}
	}else{ // destroy other color
		size--;
		slime.size--;
	}
}else{
	var reach = height + heightAt(x, y)
	if (size > 1 and reach >= heightAt(targetX, targetY)){
		spawnSlime(targetX, targetY, color);
		size--;
	}
}