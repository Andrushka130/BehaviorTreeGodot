extends BT_Condition

@export var target_key: String
@export var margin: float = 15

func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	if not blackboard.has(target_key) or actor.global_position.distance_to(blackboard[target_key]) < margin:
		return BT_NodeState.SUCCESS
	else: 
		return BT_NodeState.FAILURE
