extends ConditionNode

@export var target_key: String = "target"

func tick(actor, blackboard: Dictionary) -> BTNodeState:
	if blackboard[target_key] is Vector2:
		pass
	print(blackboard["delta"])
	print("Hi")
	return BTNodeState.SUCCESS
