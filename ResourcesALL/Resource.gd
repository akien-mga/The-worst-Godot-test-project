extends Node2D

var q_Resource : Resource = Resource.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Resource = Resource.new()

		if randi() % 2 == 1:
			q_Resource.set_local_to_scene(Autoload.get_bool())
		if randi() % 2 == 1:
			q_Resource.set_path(Autoload.get_string())
		if randi() % 2 == 1:
			q_Resource.set_name(Autoload.get_string())

			### q_Resource._setup_local_to_scene()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Resource.duplicate(Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(q_Resource.get_local_scene())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Resource.get_rid())
		if randi() % 2 == 1:
			q_Resource.setup_local_to_scene()
		if randi() % 2 == 1:
			q_Resource.take_over_path(Autoload.get_string())
