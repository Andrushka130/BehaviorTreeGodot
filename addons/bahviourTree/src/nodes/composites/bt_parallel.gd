extends CompositeNode

class_name ParallelComposite

func tick(actor, blackboard):
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
		
		if result != BTNodeState.FAILURE:
			return result
		else:
			return BTNodeState.FAILURE
	
	
