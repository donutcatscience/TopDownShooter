//Makes enimies wonder if player dies

currentTorso = spr_zombie_walk;
image_angle = direction;
image_speed = 1;
speed = 1;

var ii = irandom_range(1,200);
show_debug_message(ii);
if (ii = 100) {
	direction = random_range(1,360);
}
