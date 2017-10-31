/// @description Blood Splatter

sprite_index = choose(spr_blood01,spr_blood02,spr_blood03,spr_blood04);
bloodScale = random_range(.5,1.5);
bloodRotate = random_range(1,360);
col = merge_colour(c_maroon, c_black, 0.5);
alarm_set(0,random_range(300,600));