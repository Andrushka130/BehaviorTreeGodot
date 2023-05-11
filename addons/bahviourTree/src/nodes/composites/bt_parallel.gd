extends CompositeNode

class_name Parallel

#Sequence policy -> parallel fails as soon as one child fails
#Selector policy -> parallel succeeds as soon as one child succeds
@export_enum("Sequence policy", "Selector policy") var policy = "Sequence policy"

func tick(actor, blackboard):
	var result
	
	for child in get_children():
		result = child.tick(actor, blackboard)
			
		if policy == "Selector policy":
			if result != BTNodeState.FAILURE:
				return result
			else:
				return BTNodeState.FAILURE;
				
		else:
			if result != BTNodeState.SUCCESS:
				return result
			else:
				return BTNodeState.SUCCESS
