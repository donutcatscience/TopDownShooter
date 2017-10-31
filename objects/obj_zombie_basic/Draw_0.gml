/// @description draw enemy healthbars

if (instance_exists(obj_player)){ //points zombies to current movement direction
	image_angle = direction;
}

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

//hit flash if delt damage
if (flash > 0) {
	flash -= 0.5
	gpu_set_blendmode(bm_add);
	shader_set(shd_flash);
	shdAlpha = shader_get_uniform(shd_flash, "alpha");
	shader_set_uniform_f(shdAlpha, flash);
	
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
		
	shader_reset();
	gpu_set_blendmode(bm_normal);
}