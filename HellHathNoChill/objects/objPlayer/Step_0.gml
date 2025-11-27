//Input Detections
x_speed = keyboard_check(ord("D")) - keyboard_check(ord("A"))
y_speed = keyboard_check(ord("S")) - keyboard_check(ord("W"))
sprint = keyboard_check(vk_shift)

//State detections
if state == "dodging"{
	//Litteraly do nothing because this is changed by the end animation event
} else if (keyboard_check_pressed(ord("C")) and stamina_current > 5){
	state = "dodging"
	stamina_current -= 5
	image_index = 0
	image_speed = 1
	
	if (x_speed != 0 || y_speed != 0) {
		last_dir = point_direction(0, 0, x_speed, y_speed);
    }
} else if (x_speed != 0 or y_speed != 0) {
	state = "moving"
} else {
		state = "idle"
	}

//Get direction and nomralize speed
dir = point_direction(0, 0, x_speed, y_speed)
move_x = lengthdir_x(move_speed, dir)
move_y = lengthdir_y(move_speed, dir)

// Sprite Assignment
if state == "dodging"{

	switch(dir){
		case 0: sprite_index = sprPlayerRollRight; break;
		case 45: sprite_index = sprPlayerRollUpRight; break;
		case 90: sprite_index = sprPlayerRollUp; break;
		case 135: sprite_index = sprPlayerRollUpLeft; break;
		case 180: sprite_index = sprPlayerRollLeft; break;
		case 225: sprite_index = sprPlayerRollDownLeft; break;
		case 270: sprite_index = sprPlayerRollDown; break;
		case 315: sprite_index = sprPlayerRollDownRight; break;
	}
} else if state == "moving" {
		switch(dir){
			case 0:sprite_index = sprPlayerRight; break;
			case 45: sprite_index = sprPlayerUpRight; break;
			case 90:sprite_index = sprPlayerUp; break;
			case 135: sprite_index = sprPlayerUpLeft; break;
			case 180: sprite_index = sprPlayerLeft; break;
			case 225: sprite_index = sprPlayerDownLeft; break;
			case 270: sprite_index = sprPlayerDown; break;
			case 315: sprite_index = sprPlayerDownRight; break;
		}
		spr_prev = sprite_index
} else if state == "idle"{
	sprite_index = spr_prev
	image_index = 0
}

	
// Movement
if place_meeting(x + move_x, y, objWall){move_x = 0}
if place_meeting(x, y + move_y, objWall){move_y = 0}


if state != "idle"{//if (x_speed != 0 or y_speed != 0) {
	if sprint and stamina_current > 0{
		x += move_x * (move_speed + sprint_mod)
		y += move_y * (move_speed + sprint_mod)
				stamina_current -= .50
	} else {
		x += move_x * move_speed
		y += move_y * move_speed
	}
} 
	
	
// Regin Triggers and abilitie
if stamina_current < stamina_max and !sprint{
	stamina_current += .1
	}
	
show_debug_message(string(state))