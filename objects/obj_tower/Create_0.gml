/// @description Spawn target


target = instance_create_layer(x+16, y, "lyr_targets", obj_target);
target.color = self.color;
target.drawColor = self.drawColor;

// Inherit the parent event
event_inherited();

