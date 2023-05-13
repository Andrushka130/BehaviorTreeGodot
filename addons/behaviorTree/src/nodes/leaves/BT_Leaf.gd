@tool
@icon("res://addons/icons/Leaf/btleaf.svg")
extends BT_Node

class_name BT_Leaf

func _ready():
	assert(get_child_count() == 0, "Leaf nodes are not supposed to have any children")


func _get_configuration_warnings() -> PackedStringArray:
	if get_child_count() != 0:
		return ["Leaf nodes are not supposed to have any children"]
	
	return []
