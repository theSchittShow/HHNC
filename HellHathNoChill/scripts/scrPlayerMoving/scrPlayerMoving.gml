function scrPlayerMoving(){
	sprite_index = sprArray_PlayerMv[dir]
	if sprint and stamina_current > 0{
		stamina_current -= .50
		x += move_x * (move_speed + sprint_mod)
		y += move_y * (move_speed + sprint_mod)
	} else {
		x += move_x * move_speed
		y += move_y * move_speed
	}
	
	scrPlayerStateTransition()
}