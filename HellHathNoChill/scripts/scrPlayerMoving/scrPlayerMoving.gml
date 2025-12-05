function scrPlayerMoving(){
	sprite_index = sprArray_PlayerMv[dir]
	if sprint and stamina_current > 0{
		stamina_current -= .50
		move_contact_solid(dir, move_speed + sprint_mod)
	} else {
		move_contact_solid(dir, move_speed)
	}
	scrPlayerStateTransition()
}