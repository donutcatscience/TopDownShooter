/// @description Create Zombie

//set size
sizeModifier = 1.5;
currentTorso = spr_zombie_walk;

//zombie stats
maxHealth = 100;
currentHealth = 30;
meleeTimer = 30;
meleeDamage = 10;

walkFrame = 0;
attackFrame = 0;
enemySpeed = 1;
changeDirection = 30;

box_left = 0;  //remove these after game is finished
box_top = 0;
box_right = 0;
box_bottom = 0;

currentState = zombie_state.walk;

enum zombie_state {
	walk,
	melee,
	wonder
};
