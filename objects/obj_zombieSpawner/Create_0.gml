/// @description Spawns zombies

//initialize variables
box_left = (x - sprite_width); 
box_right = (x + sprite_width);
	
box_top = (y - sprite_height);
box_bottom = (y + sprite_height);

//zombie spawner stats
maxHealth = 100;
currentHealth = 30;
flash = 0;

//spawn rate
alarm_set(0,(room_speed * random_range(3,10)));