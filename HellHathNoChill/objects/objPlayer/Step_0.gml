x_speed = keyboard_check(ord("D")) - keyboard_check(ord("A"))
y_speed = keyboard_check(ord("S")) - keyboard_check(ord("W"))
if (x_speed != 0 or y_speed != 0){

	dir = point_direction(0, 0, x_speed, y_speed)
	move_x = lengthdir_x(move_speed, dir)
	move_y = lengthdir_y(move_speed, dir)
	if place_meeting(x + move_x * move_speed, y, objWall){
		move_x = 0
	}
	if place_meeting(x, y + move_y * move_speed, objWall){
		move_y = 0
	}
	x += move_x * move_speed
	y += move_y * move_speed
	
	switch(dir){
		case 0: sprite_index = sprPlayerRight; break;
		case 45: sprite_index = sprPlayerUpRight; break;
		case 90: sprite_index = sprPlayerUp; break;
		case 135: sprite_index = sprPlayerUpLeft; break;
		case 180: sprite_index = sprPlayerLeft; break;
		case 225: sprite_index = sprPlayerDownLeft; break;
		case 270: sprite_index = sprPlayerDown; break;
		case 315: sprite_index = sprPlayerDownRight; break;
	}
} else {
		image_index = 0
	}



if place_meeting(x + x_speed, y, objWall) == true{
	 x_speed = 0
}
if place_meeting(x, y + y_speed, objWall) == true{
	 y_speed = 0
}
