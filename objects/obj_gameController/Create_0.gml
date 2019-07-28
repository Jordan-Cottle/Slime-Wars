/// @description Set up game and global variables

global.gameStarted = false;

global.colors = []
global.colors[0] = "green"
global.colors[1] = "blue"
global.colors[2] = "red"

audio_play_sound(snd_backgroundMusic, 1, true);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

// wait 10 seconds before checking victory condition
alarm[0] = room_speed * 10;