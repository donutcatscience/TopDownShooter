/// @description draw enemy healthbars

draw_rectangle(box_left,box_top,box_right,box_bottom,true); //TEMP FOR COLLISIONS
//draw zombie healthbar
if (currentHealth < maxHealth) {
	draw_healthbar(x-16,y-40,x+16,y-38, (currentHealth/maxHealth)*100,c_black,c_red,c_green,0,true,true);
}

//draw zombie
if (currentState = zombie_state.walk) {
	if (walkFrame > 16) walkFrame = 0;
	draw_sprite_ext(currentTorso,walkFrame,x,y,sizeModifier,sizeModifier,image_angle,c_white,1);
	walkFrame++;
}

if (currentState = zombie_state.melee) {
	if (attackFrame > 16) {
		currentTorso = spr_zombie_still;
	}
	draw_sprite_ext(currentTorso,attackFrame,x,y,sizeModifier,sizeModifier,image_angle,c_white,1)
	attackFrame++;
}

if (currentState = zombie_state.wonder) {
	if (walkFrame > 16) walkFrame = 0;
	draw_sprite_ext(currentTorso,walkFrame,x,y,sizeModifier,sizeModifier,image_angle,c_white,1);
	walkFrame++;
}