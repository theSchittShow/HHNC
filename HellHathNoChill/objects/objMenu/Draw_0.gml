for (button = 0; button <= array_length(buttons)-1; button++;){
	show_debug_message("Current Cursor Position: " + string(cursor_position))
	draw_set_font(fntMain)
	draw_set_halign(fa_center)
	draw_set_color(c_ltgrey)
	if cursor_position == button{
		draw_set_color(c_red)
	}
	draw_text(pos_x, pos_y + button_height *button, buttons[button])
}
