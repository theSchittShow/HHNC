right_key = keyboard_check(ord("D"))
left_key = keyboard_check(ord("A"))
down_key = keyboard_check(ord("S"))
up_key = keyboard_check(ord("W"))


x_speed = (right_key - left_key) * move_speed
y_speed = (down_key - up_key) * move_speed

x += x_speed
y += y_speed


if (x_speed > 0) {facing = RIGHT}
if (x_speed < 0) {facing = LEFT}

if (y_speed > 0) {facing = UP}
if (y_speed < 0) {facing = DOWN}

sprite_index = sprites[facing]