@icon("res://addons/icons/Decorator/Always.png")
extends BTDecorator

class_name AlwaysDecorator

enum AlwaysStatus {Fail, Succeed}
@export var alwaysStatus: AlwaysStatus

func tick(actor, blackboard):
	var result = get_child(0).tick(actor, blackboard)
	if result == BTNodeState.RUNNING:
		return result	
		
	if alwaysStatus == AlwaysStatus.Fail:
		return BTNodeState.FAILURE
	else:
		return BTNodeState.SUCCESS
