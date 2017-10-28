/// @description control zombie

if (currentHealth <= 0) instance_destroy(self);


switch (currentState) {
case zombie_state.walk : scr_enemy_walk(); break;
case zombie_state.melee : scr_enemy_melee(); break;
case zombie_state.wonder : scr_enemy_wonder(); break;
}
++meleeTimer;
