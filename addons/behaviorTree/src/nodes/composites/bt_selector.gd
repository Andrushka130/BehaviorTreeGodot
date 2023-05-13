@tool
@icon("res://addons/icons/Control Nodes/Selector.png")
extends CompositeNode

class_name Selector

func tick(actor, blackboard) -> BTNodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.FAILURE:
			return result
	
	return BTNodeState.FAILURE
