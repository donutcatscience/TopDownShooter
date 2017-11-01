//Makes enimies wonder if player dies
//this code isn't finished, zombies will disreguard collision in this state
currentTorso = spr_zombie_walk;
image_angle = direction;
image_speed = 1;
speed = 1;

var ii = irandom_range(1,150);
if (ii = 75) {
	direction = random_range(1,360);
}
