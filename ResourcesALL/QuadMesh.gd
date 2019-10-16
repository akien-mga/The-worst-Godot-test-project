extends Node2D

var q_QuadMesh : QuadMesh = QuadMesh.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_QuadMesh = QuadMesh.new()

		if randi() % 2 == 1:
			q_QuadMesh.set_size(Autoload.get_vector2())
