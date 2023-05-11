extends ActionNode


func tick(actor, blackboard:Dictionary) -> BTNodeState:
	var timer: Timer = actor.get_node("ShoutTimer")
	if actor.has_method("shout") and timer:
		if timer.is_stopped():
			actor.shout()
			timer.start()
			return BTNodeState.SUCCESS
		else:
			return BTNodeState.RUNNING
	else:
		return BTNodeState.FAILURE
