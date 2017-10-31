// Control Enemy Collision and pathing

if (instance_exists(obj_player)){
	if (collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)) {
		path_end();
		currentState = zombie_state.melee;
	}
	else {
		if (mp_grid_path(global.grid,path,x,y,targetX,targetY,1)) {
			if (!collision_rectangle(box_left,box_top,box_right,box_bottom,obj_player,false,true)){
				path_start(path,enemySpeed,path_action_stop,false);
				//foot steps when player moves
				if (footSteps >= 10){
					var footSound = choose(snd_walk01,snd_walk02,snd_walk03,snd_walk04);
					audio_play_sound_at(footSound,x,y,0,100,300,1,false,50);
					footSteps = 0;
				}
				else ++footSteps;
			}
		}
	}
}

