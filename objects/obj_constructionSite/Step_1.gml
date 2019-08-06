/// @description Update status, handle attacks

damaged = hp < maxHp;

if (hp <= 0) {
	instance_destroy();	
}

var slime = findAdjacent(obj_slime, noone);
if(slime and slime.color != self.color){
	var impact = min(hp, floor(slime.size/2));
	progress -= impact;
	slime.size -= impact;
}
