extends CharacterBody2D

var speed = 75.0
var acceleration = 12.0

func _physics_process(delta: float) -> void:
	# Interpolates to desired velocity from current velocity, no input causes deceleration
	velocity = lerp(velocity, $Input.direction * speed, delta * acceleration)
	
	move_and_slide()
