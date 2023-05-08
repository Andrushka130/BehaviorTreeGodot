extends BTNode

class_name BTDecorator

func _ready():
	assert(get_child_count() != 1, "%s(Decorator) can only have one child" % self.name)

