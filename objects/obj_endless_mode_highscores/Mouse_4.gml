/// @description Insert description here
// You can write your code in this editor
obj_display_high_scores.bGetEndlessHighScores = true;
ds_list_clear(obj_display_high_scores.highscores);
ds_list_clear(highscores);
bFirstLoad = false;
if(bShowingNormal){ //get endless highscores
	bShowingNormal = false;
	request = http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooterendlessmode?sort=PlayerScore&dir=-1", "GET", map1, "");
	xoffset = 250;
	//swap sprite to show story mode
}
else{ //get normal highscores
	bShowingNormal = true;
	request = http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooter?sort=PlayerScore&dir=-1", "GET", map1, "");
	xoffset = 500;
	//swap sprite to show endless mode
}

