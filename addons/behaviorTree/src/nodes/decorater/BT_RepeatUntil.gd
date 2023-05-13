@tool
extends BT_Decorator

class_name BT_RepeatUntil

@export_enum("Success", "Failure") var until = 0
@onready var expected = bool(until)

func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result = not expected
	var child = get_child(0) as BT_Node
	
	while result != expected:
		result = child.tick(actor, blackboard)
		
	return result
	
