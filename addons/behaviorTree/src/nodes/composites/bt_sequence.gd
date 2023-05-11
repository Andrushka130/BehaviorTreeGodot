extends CompositeNode

class_name Sequence

func tick(actor, blackboard):
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.SUCCESS:
			return result
	
	return BTNodeState.SUCCESS
