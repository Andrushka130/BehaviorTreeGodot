extends BTNode

class_name LeafNode

func _ready():
	assert(get_child_count() == 0, "Leaf nodes are not supposed to have any children")

