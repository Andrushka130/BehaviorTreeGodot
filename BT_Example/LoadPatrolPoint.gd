extends ActionNode

var patrol_index: int = 0
@export var patrol_point_key: String = "patrol"

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	
	var points := get_tree().get_nodes_in_group("patrolPoint")
	if points.size() == 0:
		return BTNodeState.FAILURE	
	
	patrol_index = (patrol_index+1) % points.size()
	blackboard[patrol_point_key] = points[patrol_index].global_position
	
	return BTNodeState.SUCCESS
