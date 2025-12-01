function scrPlayerDodging(){
		sprint = false
		dodge = false
		attacking = false
		x += move_x * (move_speed + sprint_mod)
		y += move_y * (move_speed + sprint_mod)
		if image_index >= image_number -1{
			scrPlayerStateTransition()
	}
}