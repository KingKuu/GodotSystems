extends Node2D

var direction := Vector2.ZERO
var is_jumping := false
var jump_released := false

func _process(delta: float) -> void:
	direction = get_keyboard_input(direction)
	is_jumping = Input.is_action_pressed("func_a")
	jump_released = Input.is_action_just_released("func_a")

func get_keyboard_input(direction: Vector2) -> Vector2:
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	return direction
