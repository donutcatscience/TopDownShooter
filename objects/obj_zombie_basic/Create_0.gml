/// @description Create Zombie

//set size
sizeModifier = 1.5;
currentTorso = spr_zombie_walk;

//zombie stats
maxHealth = 100;
currentHealth = irandom_range(35,65);
meleeTimer = 30;
meleeDamage = 10;

walkFrame = 0;
attackFrame = 0;
enemySpeed = random_range(1,3);
flash = 0;
footSteps = 10;

box_left = 0;  //remove these after game is finished
box_top = 0;
box_right = 0;
box_bottom = 0;

path = path_add();
alarm_set(0,irandom_range(30,60));
targetX = (obj_player.x div 32) * 32 +16;
targetY = (obj_player.y div 32) * 32 +16;

currentState = zombie_state.walk;

enum zombie_state {
	walk,
	melee,
	wonder
};
