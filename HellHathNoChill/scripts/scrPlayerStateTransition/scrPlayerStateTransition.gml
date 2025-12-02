function scrPlayerStateTransition(){
	
	if stamina_current > 5 and dodge and state != PlayerState.dodging{
		state = PlayerState.dodging
		stamina_current -= 5
		sprite_index = sprArray_PlayerDgd[dir]
		image_index = 0
		image_speed = 1
		
	} else if (x_speed != 0 or y_speed != 0) {
		state = PlayerState.moving
		image_speed = 1
	
	} else if (x_speed == 0 and y_speed == 0) and !dodge{
		state = PlayerState.idle
		sprite_index = sprArray_PlayerMv[dir]
		image_index = 0
		image_speed = 0
	}
}