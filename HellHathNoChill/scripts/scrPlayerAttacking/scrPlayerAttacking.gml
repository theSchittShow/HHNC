function scrPlayerAttacking(){
	playerCenter_x = x + sprite_width /2
	playerCenter_y = y + sprite_height /2
	hb_x = lengthdir_x(16, dir) + playerCenter_x
	hb_y = lengthdir_y(16, dir) + playerCenter_y
	hb = instance_create_depth(hb_x, hb_y, depth, objHitBox)
	hb.creator = id
	scrPlayerStateTransition()
}