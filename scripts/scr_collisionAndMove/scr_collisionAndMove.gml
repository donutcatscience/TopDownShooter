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
if(room_get_name(room) == "rm_prototype_endless_mode"){
	if (moveX != 0){
		if (place_meeting((x + moveX), y, obj_endless_wall)){
			repeat (abs(moveX)){ 
				if (!place_meeting((x + sign(moveX)), y, obj_endless_wall)){
					x += sign(moveX); //reduces movement down to one pixel and then adds sum to move
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
		if (place_meeting(x, (y + moveY) , obj_endless_wall)){
			repeat (abs(moveY)){
				if (!place_meeting(x, (y + sign(moveY)), obj_endless_wall)){
					y += sign(moveY); //reduces movement down to one pixel and then adds sum to move
				}
				else {
					break;
				}
			}
			moveY = 0;
		}
	}
}
else{
	if (moveX != 0){
		if (place_meeting((x + moveX), y, obj_playerWall)){
			repeat (abs(moveX)){ 
				if (!place_meeting((x + sign(moveX)), y, obj_playerWall)){
					x += sign(moveX); //reduces movement down to one pixel and then adds sum to move
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
					y += sign(moveY); //reduces movement down to one pixel and then adds sum to move
				}
				else {
					break;
				}
			}
			moveY = 0;
		}
	}
}


//foot steps when player moves
if (footSteps >= 10) && ((moveX != 0) || (moveY != 0)) {
	var footSound = choose(snd_walk01,snd_walk02,snd_walk03,snd_walk04);
	audio_play_sound(footSound, 3,false);
	footSteps = 0;
}
else ++footSteps; //this keeps the foot sounds in time witht the animation

//update movement values
x += moveX;
y += moveY;