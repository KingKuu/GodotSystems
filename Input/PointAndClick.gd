extends Node2D

var direction := Vector2.ZERO

var target = null

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Click_R"):
		target = get_global_mouse_position()

func _physics_process(delta: float) -> void:
	if target:
		direction = position.direction_to(target)
