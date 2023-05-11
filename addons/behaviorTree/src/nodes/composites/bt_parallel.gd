extends CompositeNode

class_name Parallel

#Sequence policy -> parallel fails as soon as one child fails; 
#if all its children succeed, then the parallel task succeeds

#Selector policy -> parallel succeeds as soon as one child succeds;
#if all its children fail, then the parallel task fails
@export_enum("Sequence policy", "Selector policy") var policy = "Sequence policy"

func tick(actor, blackboard):
	var results: Array
	
	for child in get_children():
		results.append(child.tick(actor, blackboard))
		
	if policy == "Selector policy":
		if results.has(BTNodeState.SUCCESS):
			return BTNodeState.SUCCESS
		elif results.has(BTNodeState.RUNNING):
			return BTNodeState.RUNNING
		else:
			return BTNodeState.FAILURE;
			
	else:
		if results.has(BTNodeState.FAILURE):
			return BTNodeState.FAILURE
		elif results.has(BTNodeState.RUNNING):
			return BTNodeState.RUNNING
		else:
			return BTNodeState.SUCCESS;
