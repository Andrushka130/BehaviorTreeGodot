extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	move_and_slide()

func move_to_location(location: Vector2):
	velocity = position.direction_to(location) * SPEED

func shout() -> void:
	print("I AM COMING :-)")
