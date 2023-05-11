extends Node2D

@export var target_scene :PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_timer_timeout():
	spawn_target()
	
	
func spawn_target():
	var target = target_scene.instantiate()
	var area = get_viewport_rect()
	target.position = Vector2(randf_range(area.position.x, area.end.x), randf_range(area.position.y, area.end.y))
	
