extends BTDecorator

class_name RepeaterDecorater

@export_range(1, 999, 1, "or_greater") var iterations: int = 1

func tick(actor, blackboard:Dictionary) -> BTNodeState:
	for i in iterations:
		get_child(0).tick()
		
	return BTNodeState.SUCCESS
