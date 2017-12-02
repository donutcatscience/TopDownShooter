/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "rm_prototype_endless_mode"){
	enteredName = get_string("Score: " + string(score) + "\n" + 
	"Highest Wave: " + string(obj_endless_game_controller.currentWave) + "\n" + 
	"Highest Combo: " + string(obj_endless_game_controller.highestCombo) + "\n" + 
	"Enter your name:", "");
	requestString = "{\"PlayerName\" : \"" + string(enteredName) + "\"," +
					"\"PlayerScore\" : \"" + string(score) + "\"," +
					"\"WaveReached\" : \"" + string(obj_endless_game_controller.currentWave) + "\"," +
					"\"ComboHighScore\" : \"" + string(obj_endless_game_controller.highestCombo) +"\"}";
	http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooterendlessmode", "POST", map1, requestString);
}
else{
	enteredName = get_string("Your score was: " + string(score) + "\nEnter your name:", "");
	requestString ="{\"PlayerName\" : \"" + string(enteredName) + "\", \"PlayerScore\" : \"" + string(score) +"\"}";
	http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooter", "POST", map1, requestString);
}
