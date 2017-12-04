/// @description Insert description here
// You can write your code in this editor
if(obj_endless_mode_highscores.bSearching){
	if(!obj_endless_mode_highscores.bShowingNormal){
			draw_set_halign(fa_left);
			draw_text(x + xoffset,y + yoffset - ysetfun, "Name");
			draw_text(x + xoffset + 500, y + yoffset - ysetfun, "Score");
			draw_text(x + xoffset + 750,y + yoffset - ysetfun, "Wave");
			draw_text(x + xoffset + 1000, y + yoffset - ysetfun, "Combo");

			if(!highScoresTimeOut){
				if(!ds_list_empty(self.highscores)){
					var limit = 10;
					if(ds_list_size(highscores) < 10){
						limit = ds_list_size(highscores);	
					}
					alarm[0] = -1;
					for(i = 0; i <  limit; i+=1){
						yoffset += 60;
						var mapAtIndex = self.highscores[| i];
						var playerName = ds_map_find_value(mapAtIndex, "PlayerName");
						var playerScore = ds_map_find_value(mapAtIndex, "PlayerScore");
						var playerWave = ds_map_find_value(mapAtIndex, "WaveReached");
						var playerCombo = ds_map_find_value(mapAtIndex, "ComboHighScore");
						draw_text(x + xoffset, y + yoffset - ysetfun, string(playerName));
						draw_text(x + xoffset + 500, y + yoffset - ysetfun, string(playerScore));
						draw_text(x + xoffset + 750, y + yoffset - ysetfun, string(playerWave));
						draw_text(x + xoffset + 1000, y + yoffset - ysetfun, string(playerCombo));
					}
					yoffset = 60;
				}
				else{
					draw_set_halign(fa_center);
					draw_text(x, y - 60, "Loading Highscores...");
					if(!isAlarmSet){
						alarm[0] = 15 * room_speed;
						isAlarmSet = true;
					}
				}
			}
			else{
				draw_set_halign(fa_center);
				draw_text(x, y - 60, "Unable to Retrieve Endless Highscores or No Highscores Listed");	
			}	
		}
		else{
			draw_set_halign(fa_left);
			draw_text(x + xoffset,y + yoffset - ysetfun, "Name");
			draw_text(x + xoffset + 500, y + yoffset - ysetfun, "Score");
			if(!highScoresTimeOut){
				if(!ds_list_empty(self.highscores)){
					var limit = 10;
					if(ds_list_size(highscores) < 10){
						limit = ds_list_size(highscores);	
					}
					alarm[0] = -1;
					for(i = 0; i < limit; i+=1){
						yoffset += 60;
						var mapAtIndex = self.highscores[| i];
						var playerName = ds_map_find_value(mapAtIndex, "PlayerName");
						var playerScore = ds_map_find_value(mapAtIndex, "PlayerScore");
						draw_text(x + xoffset, y + yoffset - ysetfun, string(playerName));
						draw_text(x + xoffset + 500, y + yoffset - ysetfun, string(playerScore));
					}
					yoffset = 60;
				}
				else{
					draw_set_halign(fa_center);
					draw_text(x + 50, y - 60, "Loading Highscores...");
					if(!isAlarmSet){
						alarm[0] = 15 * room_speed;
						isAlarmSet = true;
					}
				}
			}
			else{
				draw_set_halign(fa_center);
				draw_text(x, y - 60, "Unable to Retrieve Highscores or No Highscores Listed");
			}	
		}	
}