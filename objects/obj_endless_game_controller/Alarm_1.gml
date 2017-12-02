/// @description Insert description here
// You can write your code in this editor


//Wave difficulty.
//number zombies = wave * 5.
//On each wave that is mod 10 spawn a zombie coffin.
//every 20th wave zombie damage and health is increased
//Zombies should spawn periodically not all at once.

var numZombiesToSpawn = currentWave * 5;
var numZombiesSpawned = 0;

for(var i = 0; i < numZombiesToSpawn; i ++){
	var randNo = random_range(0,4);
	instance_create_layer(random_range(spawningAreaX1[randNo], spawningAreaX2[randNo]), random_range(spawningAreaY1[randNo], spawningAreaY2[randNo]), "Instances", obj_zombie_endless_test);
	//instance_create_layer(random_range(0, 1920), random_range(0, 1080), "Instances", obj_zombie_endless_test);
	numZombiesSpawned++;
}

if(currentWave % 10 == 0){
	for(var i = 0; i < currentWave / 10; i++){
		//instance_create_layer(700, 500, "Instances", obj_zombieSpawner_endless);	
	}
}
waveStarted = false;