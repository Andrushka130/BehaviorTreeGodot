extends ActionNode

@export var patrol_radius: float = 100

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	
	var location :Vector2 = actor.global_position
	
	var axis = location - Vector2(location)
	
	
	return BTNodeState.SUCCESS
