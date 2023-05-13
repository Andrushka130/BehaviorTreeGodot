@tool
@icon("res://addons/icons/Control Nodes/Sequence.png")
extends CompositeNode

class_name Sequence

func tick(actor, blackboard) -> BTNodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.SUCCESS:
			return result
	
	return BTNodeState.SUCCESS
