/// @description find player and make path one timer

var playerX = (obj_player.x div 32) * 32 +16;
var playerY = (obj_player.y div 32) * 32 +16;

if (mp_grid_path(global.grid,path,x,y,playerX,playerY,1)) {
	path_start(path,1,path_action_stop,false);
}

alarm_set(0,irandom_range(30,60));
