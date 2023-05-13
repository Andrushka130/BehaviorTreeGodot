extends BT_Action


func tick(actor, blackboard:Dictionary) -> BT_NodeState:
	var timer: Timer = actor.get_node("ShoutTimer")
	if actor.has_method("shout") and timer:
		if timer.is_stopped():
			actor.shout()
			timer.start(2)
			return BT_NodeState.SUCCESS
		else:
			return BT_NodeState.RUNNING
	else:
		return BT_NodeState.FAILURE
