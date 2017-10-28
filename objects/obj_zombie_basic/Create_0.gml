/// @description Create Zombie

//set size
sizeModifier = 1.5;

//zombie stats
maxHealth = 100;
currentHealth = 30;

walkFrame = 0;

direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 1;

currentState = 0;

enum zombie_state {
	walk,
	attack,
};

currentState = zombie_state.walk;