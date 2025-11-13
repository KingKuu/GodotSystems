extends Node2D

var direction := Vector2.ZERO

var target = null

func _input(event: InputEvent) -> void:
	# Calculates desired direction based on mouse click
	if event.is_action_pressed("Click_R"):
		target = get_global_mouse_position()
		# Applies target position to direction to be read by other scripts
		if target:
			direction = position.direction_to(target)
