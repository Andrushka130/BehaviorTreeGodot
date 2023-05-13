@tool
extends BTDecorator

class_name InvertDecorator

func tick(actor, blackboard) -> BTNodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result = get_child(0).tick(actor, blackboard)
	
	if result == BTNodeState.FAILURE:
		return BTNodeState.SUCCESS
	if result == BTNodeState.SUCCESS:
		return BTNodeState.FAILURE
	
	return BTNodeState.RUNNING
