drawColor = selectColor(color);

draw_sprite(spr_selected, 0, snapToGrid(mouse_x), snapToGrid(mouse_y));
// Inherit the parent event
event_inherited();