extends Node

var speed:float = 100
var acceleration:float = 7

func calculate_movement(velocity: Vector2, direction: Vector2, delta: float) -> Vector2:
	velocity = lerp(velocity, direction * speed, delta * acceleration)
	return velocity
