extends ConditionNode

@export var target_key: String = "target"
@export var range: float = 100

func tick(actor, blackboard: Dictionary) -> BTNodeState:
	var target_loc: Vector2 = blackboard[target_key]
	if actor.global_position.distance_to(target_loc) > range:
		return BTNodeState.FAILURE
	
	return BTNodeState.SUCCESS
