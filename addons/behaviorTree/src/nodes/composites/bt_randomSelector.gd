@icon("res://addons/icons/Control Nodes/RandomSelector.png")
extends CompositeNode

class_name RandomSelector

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	var child_array := get_children()
	randomize()
	child_array.shuffle()
	var result
	
	for child in child_array:
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.FAILURE:
			return result
	
	return BTNodeState.FAILURE
