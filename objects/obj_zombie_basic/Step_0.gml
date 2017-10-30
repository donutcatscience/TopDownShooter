/// @description control zombie

box_left = (x - (obj_zombie_basic.sprite_width));  //turn to var after game is finished
box_right = (x + (obj_zombie_basic.sprite_width));
	
box_top = (y - (obj_zombie_basic.sprite_height));
box_bottom = (y + (obj_zombie_basic.sprite_height));

if (currentHealth <= 0) instance_destroy(self);


switch (currentState) {
case zombie_state.walk : scr_enemy_walk(); break;
case zombie_state.melee : scr_enemy_melee(); break;
case zombie_state.wonder : scr_enemy_wonder(); break;
}
++meleeTimer;
