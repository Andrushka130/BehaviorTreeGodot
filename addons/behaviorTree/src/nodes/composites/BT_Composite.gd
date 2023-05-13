@tool
@icon("res://addons/icons/btcomposite.svg")
extends BT_Node

class_name BT_Composite

func _ready():
	assert(get_child_count() > 1, "A composite node should contain at least 2 children")


func _get_configuration_warnings() -> PackedStringArray:
	var out := []
	if get_child_count() <= 1:
		out.append("A composite node should contain at least 2 children")
	
	for child in get_children():
		if not (child is BT_Node):
			out.append("In a Behaviour Tree, only BT_Nodes are allowed")
			
	return out
