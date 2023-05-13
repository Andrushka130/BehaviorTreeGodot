@tool
@icon("res://addons/icons/Decorator/Always.png")
extends BT_Decorator

class_name BT_AlwaysDecorator

enum AlwaysStatus {Fail, Succeed}
@export var alwaysStatus: AlwaysStatus

func tick(actor, blackboard) -> BT_NodeState:
	if Engine.is_editor_hint():
		return -1
	
	var result = get_child(0).tick(actor, blackboard)
	if result == BT_NodeState.RUNNING:
		return result	
		
	if alwaysStatus == AlwaysStatus.Fail:
		return BT_NodeState.FAILURE
	else:
		return BT_NodeState.SUCCESS
