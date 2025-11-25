// Enemy Creation
x_speed = 0; 
y_speed = 0; 

move_speed = 2; 
wander_speed = 1; 
detect_radius = 150; 

sprite_index = sprEnemy_PH
image_index = 0

// Set objPlayer as the target
target = objPlayer; 

// Is Wandering
state = 0; 

// Wander Attributes Angle/Direction Time
wander_dir = irandom_range(0, 359); 
wander_time = irandom_range(30, 120); 