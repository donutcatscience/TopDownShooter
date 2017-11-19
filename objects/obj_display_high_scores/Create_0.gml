/// @description Insert description here
// You can write your code in this editor
highscores = ds_list_create();
highScoresTimeOut = false;
isAlarmSet = false;
yoffset = 60;
map1 = ds_map_create();
ds_map_add(map1, "x-apikey", "74be6d09a5ea4fe2da5d2cc2f23ef0dfe7505");
var first = ds_map_find_first(map1);
ds_map_add(map1, "Content-Type", "application/json");

//GET
request = http_request("https://makinggamesdb-d8fb.restdb.io/rest/topdownshooter?sort=PlayerScore&dir=-1", "GET", map1, "");
//END GET