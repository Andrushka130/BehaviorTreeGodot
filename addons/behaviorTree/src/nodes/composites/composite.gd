@tool
extends BTNode

class_name CompositeNode

func _ready():
	assert(get_child_count() > 1, "A composite node should contain at least 2 children")


func _get_configuration_warnings() -> PackedStringArray:
	var out := []
	if get_child_count() <= 1:
		out.append("A composite node should contain at least 2 children")
	
	for child in get_children():
		if not (child is BTNode):
			out.append("In a Behaviour Tree, only BTNodes are allowed")
			
	return out
