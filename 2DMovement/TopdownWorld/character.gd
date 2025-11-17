extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity = $Movement.calculate_movement(velocity, $Input.get_move_direction(), delta)
	move_and_slide()
