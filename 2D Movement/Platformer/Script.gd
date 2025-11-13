extends CharacterBody2D

var walk_speed = 100
var acceleration = 12.0
var jump_speed = 200
var gravity = 9.81
var gravity_scale = 0.2


func _physics_process(delta):
	# Add gravity every frame if not grounded
	if !$Is_Grounded.is_colliding():
		velocity.y += gravity
	
	# Only allow jumping when on the ground
	if $Input.is_jumping && $Is_Grounded.is_colliding():
		velocity.y = -jump_speed
	
	# Handles variable jump height, releasing jump key early lets you "hop" instead of jump
	if velocity.y < 0 && $Input.jump_released:
		velocity.y *= gravity_scale
	
	# Input affects x axis only and accelerates smoothly
	velocity.x = lerp(velocity.x, $Input.direction * walk_speed, delta * acceleration)
	
	move_and_slide()
