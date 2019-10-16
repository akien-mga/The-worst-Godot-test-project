extends Node2D

var q_VisualShaderNodeTransformVecMult : VisualShaderNodeTransformVecMult = VisualShaderNodeTransformVecMult.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformVecMult = VisualShaderNodeTransformVecMult.new()

		if randi() % 2 == 1:
			q_VisualShaderNodeTransformVecMult.set_operator(Autoload.get_int()) #Operator
