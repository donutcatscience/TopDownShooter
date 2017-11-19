/// @description loads level information

level_one = keyboard_check_pressed(ord("1"));
level_two = keyboard_check_pressed(ord("2"));
level_three = keyboard_check_pressed(ord("3"));

if ((room_get_name(room) = "rm_level_selector") && (level_one)) room_goto(rm_prototype01);
if ((room_get_name(room) = "rm_level_selector") && (level_two)) room_goto(rm_prototype02);
if ((room_get_name(room) = "rm_level_selector") && (level_three)) room_goto(rm_prototype03);