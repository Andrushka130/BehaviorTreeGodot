@tool
extends BT_Decorator

class_name BT_Inverter

func tick(actor, blackboard) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result = get_child(0).tick(actor, blackboard)
	
	if result == BT_NodeState.FAILURE:
		return BT_NodeState.SUCCESS
	if result == BT_NodeState.SUCCESS:
		return BT_NodeState.FAILURE
	
	return BT_NodeState.RUNNING
