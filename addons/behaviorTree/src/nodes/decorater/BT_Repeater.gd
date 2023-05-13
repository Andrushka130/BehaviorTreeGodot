@tool
extends BT_Decorator

class_name BT_Repeater

@export_range(1, 999, 1, "or_greater") var iterations: int = 1

func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	for i in iterations:
		get_child(0).tick(actor, blackboard)
		
	return BT_NodeState.SUCCESS
