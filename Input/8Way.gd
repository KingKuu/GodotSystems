extends Node2D

var direction := Vector2.ZERO

func get_keyboard_input(direction: Vector2) -> Vector2:
	direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	return direction.normalized()
