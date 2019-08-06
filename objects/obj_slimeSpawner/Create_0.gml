/// @description Start spawning slime
alarm[0] = spawnInterval * room_speed;
sprite_index = spr_spawner;

// Inherit the parent event
event_inherited();