// Variables 
move_x = lengthdir_x(wander_speed, wander_dir);
move_y = lengthdir_y(wander_speed, wander_dir);

// Make sure target exists
if (instance_exists(target)) {
	
	// Calc distance player/enemy
	var d = point_distance(x, y, target.x, target.y);
	
	// Chase distance
	if (d < detect_radius) {
		state = 1; // Chase 
	} else {
		state = 0; // Wander
	}
}

// Current State Logic
if (state == 0) {
	// --WANDER-- 
	
	// Set Spr to Wander
	sprite_index = sprEnemy_PH; 
	
	// Countdown Timer
	wander_time--; 
	
	// Timer Expires, Pick a new direction/time
	if (wander_time == 0) {
		wander_dir = irandom_range(0, 359);
		wander_time = irandom_range(30, 120);
	}

	if place_meeting(x, y, objWall){
		move_x = 0
	}

	if place_meeting(x, y, objWall){
		move_y = 0
	}

	// Move that direction
	x += move_x;
	y += move_y;

} else {
	
	// // Set Spr to Chase
	sprite_index = sprEnemyChase_PH;
	
	// --CHASE--
	move_towards_point(target.x, target.y, move_speed);
}