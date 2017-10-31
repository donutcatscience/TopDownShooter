/// @description draw health and spawner

if (instance_exists(obj_player)){ //error checks for player
	//draw zombie healthbar
	if (currentHealth < maxHealth) {
		draw_healthbar(x-16,y-80,x+16,y-78, (currentHealth/maxHealth)*100,c_black,c_red,c_green,0,true,true);
	}
	
	draw_self();
	
	//hit flash if delt damage
	if (flash > 0) {
		flash -= 0.5
		gpu_set_blendmode(bm_add);
		shader_set(shd_flash);
		shdAlpha = shader_get_uniform(shd_flash, "alpha");
		shader_set_uniform_f(shdAlpha, flash);
	
		draw_self();
	
		shader_reset();
		gpu_set_blendmode(bm_normal);
	}
}