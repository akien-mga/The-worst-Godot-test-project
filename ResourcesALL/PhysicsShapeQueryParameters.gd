extends Node2D

var q_PhysicsShapeQueryParameters : PhysicsShapeQueryParameters = PhysicsShapeQueryParameters.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters = PhysicsShapeQueryParameters.new()

		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collision_mask(Autoload.get_int())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_exclude(Autoload.get_array())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_margin(Autoload.get_float())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_shape_rid(RID())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_transform(Autoload.get_transform())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collide_with_bodies(Autoload.get_bool())
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_collide_with_areas(Autoload.get_bool())

		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters.set_shape(BoxShape.new())
