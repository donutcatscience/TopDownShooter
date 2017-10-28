/// @description draw enemy healthbars

//draw zombie healthbar
if (currentHealth < maxHealth) {
	draw_healthbar(x-16,y-40,x+16,y-38, (currentHealth/maxHealth)*100,c_black,c_red,c_green,0,true,true);
}

//draw zombie

walkFrame++;
if (walkFrame > 16) walkFrame = 0;
draw_sprite_ext(spr_zombie_walk,walkFrame,x,y,sizeModifier,sizeModifier,image_angle,c_white,1);