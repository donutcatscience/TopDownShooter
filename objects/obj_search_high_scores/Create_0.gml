/// @description Insert description here
// You can write your code in this editor
highscores = ds_list_create();
yoffset = 60;
ystarttext = 60;
xoffset = 250;
ysetfun = 475;
nameToSearch = "";
highScoresTimeOut = false;
isAlarmSet = false;
map1 = ds_map_create();
ds_map_add(map1, "x-apikey", "");
var first = ds_map_find_first(map1);
ds_map_add(map1, "Content-Type", "application/json");
