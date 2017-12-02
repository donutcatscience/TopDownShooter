/// @description Insert description here
// You can write your code in this editor

if(!bGetEndlessHighScores){
	draw_set_halign(fa_left);
	draw_text(x,y, "Name");
	draw_text(x + 500, y, "Score");
	if(!highScoresTimeOut){
		if(!ds_list_empty(self.highscores)){
			alarm[0] = -1;
			for(i = 0; i < 10 || i < ds_list_size(highscores); i+=1){
				var mapAtIndex = self.highscores[| i];
				var playerName = ds_map_find_value(mapAtIndex, "PlayerName");
				var playerScore = ds_map_find_value(mapAtIndex, "PlayerScore");
				draw_text(x, y + yoffset, string(playerName));
				draw_text(x + 500, y + yoffset, string(playerScore));
				yoffset += 60;
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
		draw_text(x, y - 60, "Unable to Retrieve Highscores or No Highscores Listed");
	}	
}

