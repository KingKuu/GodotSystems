extends CharacterBody2D

const SPEED = 100.0
const FRICTION = 10.0

func _physics_process(delta: float) -> void:
	
	var direction := Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	
	direction.normalized()
	
	if direction != Vector2.ZERO:
		velocity += direction * SPEED * delta
		clampf(velocity.x, 0, 10)
		clampf(velocity.y, 0, 10)
	else:
		velocity -= velocity * FRICTION * delta
	
	
	move_and_slide()
