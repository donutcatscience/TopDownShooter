/// @description Insert description here
// You can write your code in this editor
//thinking boolean unlocks for the player based on the kill counter. Once unlocked
//the weapon will stay unlocked once unlocked once. We will need to work on an ammo system though
//unlimited ammo would be lame
//5 pistol damage up.
//10 pistol double damage
//15 shotgun unlocked
//20 pistol double clip size
//30 rifle unlocked
//35 shotgun extra ammo
//50 shotgun more bullets out of barrel
//60 grenade unlocked
//70 placable walls
//85 cluster grenade
//100 rifle double damage
//115 rifle extra ammo
//125 pistol tri shot + ammo up
//150 shot gun extra clip size
//200 rifle increased pierced zombies (5 - 10 zombies)
//300 increased move speed
//500 double health (?)
//1000 mind control (up to 2 zombies at once. Zombie becomes friendly and increased damage and health)
//2500 mind control + 3 zombies
//5000 shotfle (shot gun rifle)
//10000 why are you still playing? shotful increased zombies perieced.

//Might be able to use a bitmask to improve performance if necessary
if(!instance_exists(obj_zombie_endless_test) && !waveStarted){
	currentWave++;
	waveStarted = true;
	numZombiesSpawned = 0;
	alarm[1] = 1;
}
if(killCounter > highestCombo){
	highestCombo = killCounter;
}

//a bit mask would probably be way more effcient but dont got time for that.
if(killCounter >=5 && !bHandgunDoubleDamage ){
	bHandgunDoubleDamage = true
	obj_player.handgun_bullet_damage =  handgun_base_damage * 2;
	currentMessage = "Handgun Double Damage\nUnlocked";
}
else if(killCounter >= 15 && !bShotgunUnlocked){
	bShotgunUnlocked = true;
	currentMessage = "Shotgun\nUnlocked"
}
else if(killCounter >= 20 && !bHandGunDoubleClipSize){
	bHandGunDoubleClipSize = true;
	obj_player.handgun_clip_size = handgun_base_clip * 2;
	currentMessage = "Handgun Double Clip\nUnlocked";
}
else if(killCounter >= 30 && !bRifleUnlocked){
	bRifleUnlocked = true;
	currentMessage = "Rifle\nUnlocked";
}
else if(killCounter >= 50 && !bShotgunDoubleClipSize){
	bShotgunDoubleClipSize = true;
	obj_player.shotgun_clip_size = shotgun_base_clip * 2;
	currentMessage = "Shotgun Double Clip\nUnlocked";
}
else if(killCounter >= 75 && !bRifleDoubleClipSize){
	bRifleDoubleClipSize = true;
	obj_player.rifle_clip_size = rifle_base_clip * 2;
	currentMessage = "Rifle Double Clip\nUnlocked";
}
else if(killCounter >= 100 && !bRifleThreePerieced){
	bRifleThreePerieced = true;
	obj_player.zombies_able_to_pierce = 3;
	currentMessage = "Rifle More Zombies Pierced\nUnlocked"
}
else if(killCounter >= 100 && !bShotgunMoreBullets1){
	bShotgunMoreBullets1 = true;
	obj_player.shotgun_bullets_out_of_barrel = 16;
	currentMessage = "Shotgun More Bullets\nUnlocked";
}