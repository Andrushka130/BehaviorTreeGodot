extends BT_Action

@export var target_key: String

func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	var target_location: Vector2 = blackboard[target_key]
	
	if target_location and actor.has_method("move_to_location"):
		actor.move_to_location(target_location)
		return BT_NodeState.RUNNING
		
	else:
		return BT_NodeState.FAILURE
