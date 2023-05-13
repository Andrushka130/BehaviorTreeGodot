@tool
@icon("res://addons/icons/Control Nodes/Parallel.png")
extends BT_Composite

class_name BT_Parallel

#Sequence policy -> parallel fails as soon as one child fails; 
#if all its children succeed, then the parallel task succeeds

#Selector policy -> parallel succeeds as soon as one child succeds;
#if all its children fail, then the parallel task fails
@export_enum("Sequence policy", "Selector policy") var policy = "Sequence policy"

func tick(actor, blackboard) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	var results: Array
	
	for child in get_children():
		results.append(child.tick(actor, blackboard))
		
	if policy == "Selector policy":
		if results.has(BT_NodeState.SUCCESS):
			return BT_NodeState.SUCCESS
		elif results.has(BT_NodeState.RUNNING):
			return BT_NodeState.RUNNING
		else:
			return BT_NodeState.FAILURE;
			
	else:
		if results.has(BT_NodeState.FAILURE):
			return BT_NodeState.FAILURE
		elif results.has(BT_NodeState.RUNNING):
			return BT_NodeState.RUNNING
		else:
			return BT_NodeState.SUCCESS;
