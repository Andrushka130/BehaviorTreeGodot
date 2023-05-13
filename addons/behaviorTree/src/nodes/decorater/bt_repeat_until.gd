@tool
extends BTDecorator

class_name RepeatUntil

@export_enum("Success", "Failure") var until = 0
@onready var expected = bool(until)

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result = not expected
	var child = get_child(0) as BTNode
	
	while result != expected:
		result = child.tick(actor, blackboard)
		
	return result
	
