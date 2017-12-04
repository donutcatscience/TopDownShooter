/// @description control win condition

if (instance_exists(obj_player)) {
	if (place_meeting(x,y,obj_player)) {
		instance_destroy(obj_player);
		instance_create_layer(0,0,"UI",obj_congrats_title);
		//enter score if final level
		if (room_get_name(room) = "rm_prototype05"){
			var enterScore = instance_create_layer(0,0,"UI", obj_enter_score);
			enterScore.image_xscale = 2;
			enterScore.image_yscale = 2;
		}
		//instance_create_layer()
		audio_play_sound(snd_mission_completed,1,false);
		obj_room_controller.win = 1;
	}
}