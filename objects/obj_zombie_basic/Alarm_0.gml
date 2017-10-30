/// @description find player and make path one timer

if (instance_exists(obj_player)) {
	targetX = (obj_player.x div 32) * 32 +16;
	targetY = (obj_player.y div 32) * 32 +16;

	alarm_set(0,irandom_range(30,60));
}