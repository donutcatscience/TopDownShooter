/// @description Spawns zombies

image_xscale = 1.8;
image_yscale = 2.2;

//initialize bounding box variables for collision
box_left = (x - (sprite_width div 2)); 
box_right = (x + (sprite_width div 2));
	
box_top = (y - (sprite_height div 2));
box_bottom = (y + (sprite_height div 2));

//zombie spawner stats
maxHealth = 100;
currentHealth = 100;
flash = 0; //for white flash shader

//spawn rate
alarm_set(0,(room_speed * random_range(3,10)));
