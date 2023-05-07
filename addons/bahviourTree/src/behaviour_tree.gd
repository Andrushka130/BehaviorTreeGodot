extends Node

class_name BehaviorTree

var blackboard :Dictionary
var enabled :bool = true

@onready var root :BTNode = get_child(0) as BTNode

func _ready() -> void:
	assert(get_child_count() == 1, "Behaviour Tree should only have one root")
	

func _physics_process(delta) -> void:
	if not enabled:
		return
		
	blackboard["delta"] = delta
	root.tick(get_parent(), blackboard)
	

func enable() -> void:
	enabled = true
	

func disable() -> void:
	enabled = false
