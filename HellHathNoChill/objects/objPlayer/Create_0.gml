enum PlayerState {
	idle,
	moving,
	dodging,
	attacking
}
depth = -1

//Movement Values
x_speed = 0
y_speed = 0
move_speed = 1.2
sprint_mod = 1.5

// State Values
state = PlayerState.idle
dir = Dirs.Down
hp_max = 100
hp_current = 100
stamina_max = 100
stamina_current = 100
mana_max = 100
mana_currnet = 50
sprite_index = sprPlayerDown
spr_prev = sprite_index
image_index = 0

 // Player Sprites
sprArray_PlayerDgd[Dirs.Right] = sprPlayerRollRight
sprArray_PlayerDgd[Dirs.UpRight] = sprPlayerRollUpRight
sprArray_PlayerDgd[Dirs.Up] = sprPlayerRollUp	
sprArray_PlayerDgd[Dirs.UpLeft] = sprPlayerRollUpLeft	
sprArray_PlayerDgd[Dirs.Left] = sprPlayerRollLeft
sprArray_PlayerDgd[Dirs.DownLeft] = sprPlayerRollDownLeft	
sprArray_PlayerDgd[Dirs.Down] = sprPlayerRollDown
sprArray_PlayerDgd[Dirs.DownRight] = sprPlayerRollDownRight	

sprArray_PlayerMv[Dirs.Right] = sprPlayerRight
sprArray_PlayerMv[Dirs.UpRight] = sprPlayerUpRight
sprArray_PlayerMv[Dirs.Up] = sprPlayerUp	
sprArray_PlayerMv[Dirs.UpLeft] = sprPlayerUpLeft	
sprArray_PlayerMv[Dirs.Left] = sprPlayerLeft
sprArray_PlayerMv[Dirs.DownLeft] = sprPlayerDownLeft	
sprArray_PlayerMv[Dirs.Down] = sprPlayerDown
sprArray_PlayerMv[Dirs.DownRight] = sprPlayerDownRight	


