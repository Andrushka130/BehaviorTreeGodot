extends ConditionNode

@export var target_key: String
@export var margin: float = 15

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	if not blackboard.has(target_key) or actor.global_position.distance_to(blackboard[target_key]) < margin:
		return BTNodeState.SUCCESS
	else: 
		return BTNodeState.FAILURE
