/// @description Set Variables
//size modifier
sizeModifier = .5;

image_xscale = sizeModifier;
image_yscale = sizeModifier;


//player variables
diagonalPenalty = 1.2; //keeps player from getting a movement advatage by moving diagionaly
playerSpeed = 5;
currentPlayerSpeed = 0;
moveX = 0;
moveY = 0;
currentHealth = 100;
maxHealth = 100;

//action switch states
fireWeapon = 0;
currentReload = 0;
currentClip = 0;
bulletSpawn_x = 0;
bulletSpawn_y = 0;

playerCurrentFeet = spr_player_feet_walk;
playerCurrentTorso = spr_player_knife_walk;
playerLastTorso = spr_player_knife_walk;
flash = 0;

walkFrame = 0; //animation starting points
torsoFrame = 0;
currentTempTorso = 0;

box_left = 0;  //remove these after game is finished
box_top = 0;
box_right = 0;
box_bottom = 0;

//weapon control states
enum player_state {
	knife,
	handgun,
	shotgun,
	rifle
};

//start with knife out
currentState = player_state.knife;

instance_create_layer(1,1,"Instances",obj_fakeMouse);