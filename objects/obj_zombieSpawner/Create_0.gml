/// @description Spawns zombies

//initialize variables

//zombie spawner stats
maxHealth = 100;
currentHealth = 30;
flash = 0;

//spawn rate
alarm_set(0,(room_speed * random_range(3,10)));