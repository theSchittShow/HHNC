function scrPlayerDodging(){
		sprint = false
		dodge = false
		attacking = false
		move_contact_solid(dir, move_speed + sprint_mod)
		if image_index >= image_number -1{
			scrPlayerStateTransition()
	}
}