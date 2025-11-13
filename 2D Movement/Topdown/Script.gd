extends CharacterBody2D

#max speed.
var speed = 75.0
#how fast you reach the speed, higher value means faster accel.
var acceleration = 12.0

var direction := Vector2.ZERO

func _physics_process(delta: float) -> void:
	#get input direction from keyboard
	direction = $Input.direction
	#calculate velocity, also calculated deceleration if direction is 0
	velocity = lerp(velocity, direction * speed, delta * acceleration)
	
	move_and_slide()
