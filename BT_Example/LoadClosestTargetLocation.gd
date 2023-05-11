extends ActionNode

@export var target_key: String = "target"

func tick(actor, blackboard) -> BTNodeState:
	var targets = get_tree().get_nodes_in_group("Target")
	if targets.size() == 0:
		blackboard[target_key] = null
		return BTNodeState.FAILURE
	
	var actor_pos: Vector2 = actor.position
	var min := actor_pos.distance_to(targets[0].position)
	var next_target = targets[0]
	
	var distance: float
	for target in targets:
		distance = actor_pos.distance_to(target.position)
		if  distance < min:
			min = distance
			next_target = target
			
	blackboard[target_key] = next_target.position
	return BTNodeState.SUCCESS
