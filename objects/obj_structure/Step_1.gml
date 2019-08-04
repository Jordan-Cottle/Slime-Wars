/// @description Update status, handle repairs and attacks

damaged = hp < maxHp;

// stop repairing if not damaged
repairing = damaged;

if (hp <= 0) {
	instance_destroy();	
}

var slime = findAdjacent(obj_slime, noone);
if(slime){
	var impact = min(hp, slime.size/2);
	if(repairing and slime.color = self.color){
		hp += impact;
		slime.size -= impact;
	}else if (slime.color != self.color){
		hp -= impact;
		slime.size -= impact;
	}
}
