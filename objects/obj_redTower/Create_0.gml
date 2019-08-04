/// @description Spawn target
sprite_index = spr_towerBase; // set proper sprite

target = instance_create_layer(targetX, targetY, "lyr_targets", obj_target);
direction = point_direction(x, y, targetX, targetY);

// Inherit the parent event
event_inherited();

