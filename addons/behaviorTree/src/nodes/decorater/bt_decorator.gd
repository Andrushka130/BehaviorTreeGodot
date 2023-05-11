extends BTNode

class_name BTDecorator

func _ready():
	assert(get_child_count() == 1, "%s(Decorator) should have one child" % self.name)

func _get_configuration_warnings() -> PackedStringArray:
	if get_child_count() != 1:
		return ["%s(Decorator) should have one child" % self.name]
	elif not (get_child(0) is BTNode):
		return ["In a Behaviour Tree, only BTNodes are allowed"]
		
	return []
	
