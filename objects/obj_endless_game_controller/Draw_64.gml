/// @description Insert description here
// You can write your code in this editor

//draw_text(355,35,"Score: " + string(score));
draw_set_alpha(1);
draw_text(700, 35, "Combo: " + string(killCounter));
draw_text(1550, 35, "Wave: " + string(currentWave));

if(currentMessage != ""){
	draw_set_alpha(currentAlpha);
	draw_set_halign(fa_center);
	draw_text_transformed(obj_player.x - unlockX, obj_player.y - unlockY, currentMessage,.75,.75, image_angle);
	currentAlpha -= .01;
	if(currentAlpha == 0){
		currentMessage = "";
		currentAlpha = 1;
	}
	draw_set_alpha(1);
	draw_set_halign(fa_left);
}