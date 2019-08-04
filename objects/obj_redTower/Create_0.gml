/// @description Spawn target in preset location
sprite_index = spr_towerBase; // set proper sprite

target = instance_create_layer(targetX, targetY, "lyr_targets", obj_target);
direction = point_direction(x, y, targetX, targetY);

// Inherit the grandparent event
event_perform_object(obj_structure, ev_create, 0);