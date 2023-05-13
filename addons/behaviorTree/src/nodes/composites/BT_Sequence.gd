@tool
@icon("res://addons/icons/Control Nodes/Sequence.png")
extends BT_Composite

class_name BT_Sequence

func tick(actor, blackboard) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
		
		if result != BT_NodeState.SUCCESS:
			return result
	
	return BT_NodeState.SUCCESS
