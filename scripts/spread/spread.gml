/// spread()
var slime = findAdjacent(obj_slime, obj_barrier);

if (slime){
	if(slime.color == self.color){ // spread slime to same color
		if(slime.size+1 < self.size){
			size--;
			slime.size++;
		}
	}else{ // destroy other color
		size--;
		slime.size--;
	}
}else{
	var reach = height + heightAt(x, y)
	if (size > 2 and reach >= heightAt(targetX, targetY)){
		spawnSlime(targetX, targetY, color);
		size--;
	}
}