extends CharacterBody2D

#vertical movement variables
var jump_speed = 50.0
var gravity = 0.5
var jump_release_deceleration = 0.5

#horizontal movement variables
var move_speed = 75.0
var acceleration = 0.5
var deceleration = 0.1
var direction := Vector2.ZERO

func _physics_process(delta: float) -> void:
	if !is_on_floor():
		velocity.y += gravity * delta
	#get input direction from keyboard
	direction = $Input.direction
	#calculate velocity, also calculated deceleration if direction is 0
	if direction.x != 0:
		velocity.x = move_toward(velocity.x, direction.x * move_speed, move_speed * acceleration)
	else:
		velocity.x = move_toward(velocity.x, 0, move_speed * deceleration)
	
	if is_on_floor() && $Input.is_jumping:
		velocity.y = -jump_speed
	
	if velocity.y < 0 && $Input.jump_released:
		velocity.y *= -jump_release_deceleration
	
	move_and_slide()
