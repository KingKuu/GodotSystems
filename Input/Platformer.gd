extends Node2D

var direction = 0
var is_jumping = false
var jump_released = false

func _input(event: InputEvent) -> void:
	# Calculates desired direction based on key press
	direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	
	# Changes variable value to be read by other scripts
	is_jumping = Input.is_action_just_pressed("func_a")
	jump_released = Input.is_action_just_released("func_a")
