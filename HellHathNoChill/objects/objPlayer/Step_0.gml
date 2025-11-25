// Detect what keys are being pressed
x_speed = keyboard_check(ord("D")) - keyboard_check(ord("A"))
y_speed = keyboard_check(ord("S")) - keyboard_check(ord("W"))
if keyboard_check(vk_shift){
	sprint = true
} else {
	sprint = false
	}


if (x_speed != 0 or y_speed != 0){

	dir = point_direction(0, 0, x_speed, y_speed)
	move_x = lengthdir_x(move_speed, dir) * move_speed
	move_y = lengthdir_y(move_speed, dir) * move_speed
	
	if place_meeting(x + move_x, y, objWall){
		move_x = 0
	}
	if place_meeting(x, y + move_y, objWall){
		move_y = 0
	}
	
	// Move the player and adjust stamina where required
	if sprint and stamina_current > 0{
		x += move_x * (move_speed + sprint_offset)
		y += move_y * (move_speed + sprint_offset)
		stamina_current -= .25
	} else {
		x += move_x * move_speed
		y += move_y * move_speed
	}
	
	// Assign sprites according to movement
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
	
// Regin Triggers and abilitie
if stamina_current < stamina_max and !sprint{
	stamina_current += .10
	}