function scPlayerIdle(){
	if stamina_current < stamina_max{stamina_current += .05}
	scrPlayerStateTransition()
}