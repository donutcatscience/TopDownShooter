/// @description Set Variables
//size modifier
if(room_get_name(room) == "rm_prototype_endless_mode"){
	sizeModifier = .5;
}
else{
	sizeModifier = .5;	
}

image_xscale = sizeModifier;
image_yscale = sizeModifier;

//player variables
diagonalPenalty = 1.2; //keeps player from getting a movement advatage by moving diagionaly
playerSpeed = 5;
currentPlayerSpeed = 0;
moveX = 0;
moveY = 0;
currentHealth = health;
maxHealth = 100;
playerKeys = 0;

//gun variables
//gun clip sizes
handgun_clip_size = 12;
shotgun_clip_size = 8;
rifle_clip_size = 2;
//gun damages
handgun_bullet_damage = 20;
shotgun_bullet_damage = 45;
rifle_bullet_damage = 30;
//other
shotgun_bullets_out_of_barrel = 12;
zombies_able_to_pierce = 2;


fireWeapon = 0;
currentReload = 0;
reloadSpeed = 0;

handgun_bullets_remaining = handgun_clip_size;
shotgun_bullets_remaining = shotgun_clip_size;
rifle_bullets_remaining = rifle_clip_size;





currentClip = 0;
bulletSpawn_x = 0;
bulletSpawn_y = 0;



//action switch states
playerCurrentFeet = spr_player_feet_walk;
playerCurrentTorso = spr_player_knife_walk;
playerLastTorso = spr_player_knife_walk;
flash = 0;

walkFrame = 0; //animation starting points
torsoFrame = 0;
currentTempTorso = 0;
footSteps = 10;

box_left = 0; 
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

instance_create_layer(1,1,"UI",obj_fakeMouse);