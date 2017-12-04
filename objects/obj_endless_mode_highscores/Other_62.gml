/// @description Insert description here
// You can write your code in this editor
ds_list_clear(highscores);
if (ds_map_find_value(async_load, "id")){
	if ds_map_find_value(async_load, "status") == 0
    {
		var json = async_load[? "result"];

	//convert json
		var map34 = json_decode(json);
		
		if(ds_map_exists(map34, "default")){
			self.highscores = map34[? "default"];
		}
		else{
			ds_list_add(0, "Unable to get highscores");
		}
    }
   else
      {
			ds_list_add(highscores, "Unable to retrieve/add to highscores at this time");
      }
}