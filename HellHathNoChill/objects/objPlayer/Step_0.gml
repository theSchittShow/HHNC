//Input Detections
x_speed = keyboard_check(ord("D")) - keyboard_check(ord("A"))
y_speed = keyboard_check(ord("S")) - keyboard_check(ord("W"))
sprint = keyboard_check(vk_shift)
dodge = keyboard_check(ord("C"))
attack = keyboard_check(ord("F"))

//Set direction and nomralize speed
if (x_speed != 0 || y_speed != 0){
	dir = point_direction(0, 0, x_speed, y_speed)
}
move_x = lengthdir_x(move_speed, dir)
move_y = lengthdir_y(move_speed, dir)
if place_meeting(x + move_x, y, objWall){move_x = 0}
if place_meeting(x, y + move_y, objWall){move_y = 0}

//State Assignment
switch(state){
	case PlayerState.dodging:	scrPlayerDodging(); break;
	case PlayerState.moving:	scrPlayerMoving(); break;
	case PlayerState.idle:		scPlayerIdle(); break;
}

	
// Regin Triggers and abilitie
if stamina_current < stamina_max and !sprint and state != PlayerState.dodging{
	stamina_current += .05
}
show_debug_message(string(state) + " " + sprite_get_name(sprite_index) + " " + string(dodge))