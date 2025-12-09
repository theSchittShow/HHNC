//Input Detections
x_speed = keyboard_check(ord("D")) - keyboard_check(ord("A"))
y_speed = keyboard_check(ord("S")) - keyboard_check(ord("W"))
sprint = keyboard_check(vk_shift)
dodge = keyboard_check(ord("C"))
attack = mouse_check_button_pressed(mb_left)


// Temporary for testing room transitions on player death
if keyboard_check_pressed(vk_space){hp_current -= 25}


//Set direction and nomralize speed
if (x_speed != 0 || y_speed != 0){
	dir = point_direction(0, 0, x_speed, y_speed)
}


//State Assignment
switch(state){
	case PlayerState.dodging:	scrPlayerDodging(); break;
	case PlayerState.moving:	scrPlayerMoving(); break;
	case PlayerState.idle:		scPlayerIdle(); break;
	case PlayerState.attacking:	scrPlayerAttacking(); break;
}
	
// Regin Triggers
if stamina_current < stamina_max and !sprint and state != PlayerState.dodging{
	stamina_current += .05
}
show_debug_message(string(state) + " " + sprite_get_name(sprite_index) + " " + string(dodge))
