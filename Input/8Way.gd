extends Node2D

var req_dash:bool

func get_move_direction() -> Vector2:
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	req_dash = Input.is_action_just_pressed("func_a")
	
	return direction.normalized()
