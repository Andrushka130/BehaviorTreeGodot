extends Node

class_name BT_Node

enum BT_NodeState {SUCCESS, RUNNING, FAILURE}

func tick(actor, blackboard :Dictionary) -> BT_NodeState:
	return -1
