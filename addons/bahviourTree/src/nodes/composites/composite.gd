extends BTNode

class_name CompositeNode

# Called when the node enters the scene tree for the first time.
func _ready():
	assert(get_child_count() > 1, "A composite node should contain at least 2 children")
