extends ConditionNode

@export var target_key: String = "target"
@export var range: float = 50

func tick(actor, blackboard: Dictionary) -> BTNodeState:
	var target_loc: Vector2 = blackboard[target_key]
	if target_loc.length() > range:
		return BTNodeState.FAILURE
	
	return BTNodeState.SUCCESS
