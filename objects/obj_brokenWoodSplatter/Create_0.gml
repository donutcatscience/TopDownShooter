/// @description Blood Splatter

sprite_index = choose(spr_brokenWood01,spr_brokenWood02,spr_brokenWood03,spr_woodBlood01);
bloodScale = random_range(.5,1.5);
bloodRotate = random_range(1,360);

alarm_set(0,random_range(300,600));