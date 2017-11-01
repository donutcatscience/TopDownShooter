/// @description adds keys to set and plays sound

++obj_player.playerKeys;
audio_play_sound(snd_key_collect,4,false);
instance_destroy();