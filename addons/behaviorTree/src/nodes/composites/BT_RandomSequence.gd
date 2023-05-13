@tool
@icon("res://addons/icons/Control Nodes/RandomSequence.png")
extends BT_Composite

class_name BT_RandomSequence

func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
		
	var child_array := get_children()
	randomize()
	child_array.shuffle()
	var result
	
	for child in child_array:
		result = child.tick(actor, blackboard)
		
		if result != BT_NodeState.SUCCESS:
			return result
	
	return BT_NodeState.SUCCESS
