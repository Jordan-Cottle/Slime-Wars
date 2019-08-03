/// @description SPLASH!

if(other != destination){
	return;	
}

var slime = instance_place(other.x, other.y, obj_slime);

if(slime){
	if(slime.color != self.color){
		var size = slime.size;
		if(size >= payload){
			slime.size -= payload;
		}else{
			instance_destroy(slime);
			spawnSlime(other.x, other.y, color, payload - size);
		}
	}else{
		slime.size += payload;	
	}
}else{
	spawnSlime(other.x, other.y, color, payload);
}

instance_destroy();