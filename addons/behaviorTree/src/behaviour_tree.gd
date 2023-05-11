@tool
extends Node

class_name BehaviorTree

var blackboard :Dictionary
var enabled :bool = true

@onready var root :BTNode = get_child(0) as BTNode

func _ready() -> void:
	assert(get_child_count() == 1, "A Behaviour Tree should have one and just one root node")
	

func _physics_process(delta) -> void:		
	if not enabled or Engine.is_editor_hint():
		return
		
	blackboard["delta"] = delta
	root.tick(get_parent(), blackboard)
	

func enable() -> void:
	enabled = true
	

func disable() -> void:
	enabled = false


func _get_configuration_warnings() -> PackedStringArray:
	if get_child_count() != 1:
		return ["A Behaviour Tree should have one and just one root node"]
	elif not (get_child(0) is BTNode):
		return ["In a Behaviour Tree, only BTNodes are allowed"]
	return []
