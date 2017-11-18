/// @description Insert description here
// You can write your code in this editor
var json = async_load[? "result"];

//convert json
var map34 = json_decode(json);
//GET CODE
if(map34 == -1) ds_list_add(highscores, "Unable to retrieve highscores at this time");

if(ds_map_exists(map34, "default")){
	highscores = map34[? "default"];
}
else{
	ds_list_add(0, "Unable to get highscores");
}
//END GET CODE