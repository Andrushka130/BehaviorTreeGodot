extends CompositeNode

class_name RandomSequence

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	var child_array := get_children()
	randomize()
	child_array.shuffle()
	var result
	
	for child in child_array:
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.SUCCESS:
			return result
	
	return BTNodeState.SUCCESS
