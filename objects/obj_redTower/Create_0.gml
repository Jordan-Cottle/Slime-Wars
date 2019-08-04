/// @description Spawn target in preset location
sprite_index = spr_towerBase; // set proper sprite

// Inherit the grandparent event
event_perform_object(obj_structure, ev_create, 0);

target = instance_create_layer(targetX, targetY, "lyr_targets", obj_target);
target.color = self.color;
target.drawColor = self.drawColor;
direction = point_direction(x, y, targetX, targetY);