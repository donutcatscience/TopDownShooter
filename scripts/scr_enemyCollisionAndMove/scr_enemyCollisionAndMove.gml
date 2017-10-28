// Control Enemy Collision

//horizontal collision check 
if (moveX != 0){
	if (place_meeting((x + moveX), y, obj_player)){
		repeat (abs(moveX)){ 
			if (!place_meeting((x + sign(moveX)), y, obj_player)){
				x += sign(moveX); //reduces movement down to one pixel
			}
			else {
				break;
			}
		}
		moveX = 0;
	}
}

//verticle collision check 
if (moveY != 0){
	if (place_meeting(x, (y + moveY) , obj_player)){
		repeat (abs(moveY)){
			if (!place_meeting(x, (y + sign(moveY)), obj_player)){
				y += sign(moveY);
			}
			else {
				break;
			}
		}
		moveY = 0;
	}
}

//update movement values
x += moveX;
y += moveY;