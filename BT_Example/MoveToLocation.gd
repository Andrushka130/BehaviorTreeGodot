extends ActionNode

@export var target_key: String

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	var target_location: Vector2 = blackboard[target_key]
	
	if target_location and actor.has_method("move_to_location"):
		actor.move_to_location(target_location)
		return BTNodeState.RUNNING
		
	else:
		return BTNodeState.FAILURE
