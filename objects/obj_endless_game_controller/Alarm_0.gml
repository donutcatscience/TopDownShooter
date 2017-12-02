/// @description Insert description here
// You can write your code in this editor
//can run the counter down faster by adding more if statments. and reducing the multiplyer.

if(killCounter > 0 && killCounter <= 15){
	killCounter--;
	alarm[0] = comboSpeedDropper * room_speed;
}
else if(killCounter > 15 && killCounter <= 50){
	killCounter--;
	comboSpeedDropper = 1.5;
	alarm[0] = comboSpeedDropper * room_speed;
}
else if(killCounter > 50){
	killCounter--;
	comboSpeedDropper = 1;
	alarm[0] = comboSpeedDropper * room_speed;
}
