//Cursor controller
cursor_move = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
select = keyboard_check(vk_enter)
cursor_position += cursor_move


//Drawing the menu and current selection
if (cursor_position != cursor_last) {audio_play_sound(sndCursorMove, 1, false)}
if cursor_position > array_length(buttons)-1{cursor_position = 0}
if cursor_position < 0{cursor_position = array_length(buttons) -1}
cursor_last = cursor_position

if select{
	
	switch (cursor_position){
		case 0: room_goto(Room1); break;
		case 1: show_debug_message("OPEN SETTINGS"); break;
		case 2: game_end(0); break
	}
}