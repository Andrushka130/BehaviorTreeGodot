@tool
extends BT_Node

class_name BT_Decorator

func _ready():
	assert(get_child_count() == 1, "%s(Decorator) should have one child" % self.name)

func _get_configuration_warnings() -> PackedStringArray:
	if get_child_count() != 1:
		return ["%s(Decorator) should have one child" % self.name]
	elif not (get_child(0) is BT_Node):
		return ["In a Behaviour Tree, only BT_Nodes are allowed"]
		
	return []
	
