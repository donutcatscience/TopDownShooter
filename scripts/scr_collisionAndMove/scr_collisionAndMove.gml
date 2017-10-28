//resets movement every step to prevent creep
moveX = 0;
moveY = 0;


//gets movement X and Y values to make sure there are no issues with simultanious key presses
moveX = (inputRight - inputLeft) * playerSpeed;
moveY = (inputDown - inputUp) * playerSpeed;

//tests to see if player is moving diagonaly and incures a penalty to prevent faster movement
if ((abs(moveX) > 0) && ((abs(moveY) > 0))) { 
	currentPlayerSpeed = playerSpeed / diagonalPenalty ;
	moveX = (inputRight - inputLeft) * currentPlayerSpeed;
	moveY = (inputDown - inputUp) * currentPlayerSpeed;
}
 
//horizontal collision check 
if (moveX != 0){
	if (place_meeting((x + moveX), y, obj_playerWall)){
		repeat (abs(moveX)){ 
			if (!place_meeting((x + sign(moveX)), y, obj_playerWall)){
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
	if (place_meeting(x, (y + moveY) , obj_playerWall)){
		repeat (abs(moveY)){
			if (!place_meeting(x, (y + sign(moveY)), obj_playerWall)){
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