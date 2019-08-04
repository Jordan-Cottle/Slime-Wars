/// @description Gather slime

var slime = findAdjacent(obj_slime, noone);

if(slime and slime.color == self.color and slime.size > 1 and charge < slimePerShot){
	charge++;
	slime.size--;
}

if(charge >= slimePerShot){
	var shot = instance_create_layer(x, y, "lyr_targets", obj_turretShot);
	shot.color = self.color;
	shot.drawColor = self.drawColor;
	shot.direction = point_direction(x, y, target.x, target.y);
	shot.speed = 10;
	shot.payload = slimePerShot;
	shot.destination = target;
	charge-= slimePerShot;
}
