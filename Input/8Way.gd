extends Node2D

var direction := Vector2.ZERO

func _input(event: InputEvent) -> void:
	# Calculates desired direction based on key press
	direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
