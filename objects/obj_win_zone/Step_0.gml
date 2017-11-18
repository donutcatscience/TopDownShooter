/// @description control win condition

if (instance_exists(obj_player)) {
	if (place_meeting(x,y,obj_player)) {
		instance_destroy(obj_player);
		instance_create_layer(0,0,"UI",obj_congrats_title);
		instance_create_layer(960,600, "UI", obj_enter_score);
		//instance_create_layer()
		audio_play_sound(snd_mission_completed,1,false);
		obj_room_controller.win = 1;
	}
}