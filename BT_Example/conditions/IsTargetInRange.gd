extends BT_Condition

@export var target_key: String = "target"
@export var range: float = 100

func tick(actor, blackboard: Dictionary) -> BT_NodeState:
	var target_loc: Vector2 = blackboard[target_key]
	if actor.global_position.distance_to(target_loc) > range:
		return BT_NodeState.FAILURE
	
	return BT_NodeState.SUCCESS
