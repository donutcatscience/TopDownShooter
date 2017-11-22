/// @description loads level information

level_one = keyboard_check_pressed(ord("1"));
level_two = keyboard_check_pressed(ord("2"));
level_three = keyboard_check_pressed(ord("3"));
level_four = keyboard_check_pressed(ord("4"));
level_five = keyboard_check_pressed(ord("5 "));

if ((room_get_name(room) = "rm_level_selector") && (level_one)) {
	//clean up any previous level data
	scr_level_clean_up();
	room_goto(rm_prototype01);
}

if ((room_get_name(room) = "rm_level_selector") && (level_two)) {
	//clean up any previous level data
	scr_level_clean_up();
	room_goto(rm_prototype02);
}

if ((room_get_name(room) = "rm_level_selector") && (level_three)) {
	//clean up any previous level data
	scr_level_clean_up();
	room_goto(rm_prototype03);
}

if ((room_get_name(room) = "rm_level_selector") && (level_four)) {
	//clean up any previous level data
	scr_level_clean_up();
	room_goto(rm_prototype04);
}

if ((room_get_name(room) = "rm_level_selector") && (level_five)) {
	//clean up any previous level data
	scr_level_clean_up();
	room_goto(rm_prototype05);
}