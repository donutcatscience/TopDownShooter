/// @description Insert description here
// You can write your code in this editor

killCounter = 5;

//base damages
handgun_base_damage = 20;
shotgun_base_damage = 45;
rifle_base_damage = 30;

//base clip sizes
handgun_base_clip = 12;
shotgun_base_clip = 8;
rifle_base_clip = 2;


//Gun Unlocks
bShotgunUnlocked = false;
bRifleUnlocked = false;

//Damage Unlocks
bHandgunDoubleDamage = false;

//Clip Unlocks
bHandGunDoubleClipSize = false;
bShotgunDoubleClipSize = false;
bRifleDoubleClipSize = false;


//other
bRifleThreePerieced = false;
bShotgunMoreBullets1 = false;

currentWave = 0;
waveStarted = false;

spawningAreaX1 = [50,2120,50,50];
spawningAreaX2 = [100, 2170, 2170, 2170];

spawningAreaY1 = [50, 50, 50, 1280];
spawningAreaY2 = [1320, 1330, 100, 1320];

numZombiesSpawned = 0;

comboSpeedDropper = 2;

highestCombo = 0;

zombieMaxHealth = 100;

light = noone;

unlockNeedDisplay = false;
currentMessage = "";
currentAlpha = 1;

//For .5 scale
unlockX = 200;
unlockY = 300;
//for .75 scale