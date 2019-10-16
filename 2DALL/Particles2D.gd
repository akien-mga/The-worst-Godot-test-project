extends Particles2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		nodeFunction(self)

func nodeFunction(q_Particles2D : Particles2D) -> void:

	if randi() % 2 == 1:
		q_Particles2D.set_emitting(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles2D.set_amount(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_Particles2D.set_lifetime(Autoload.get_floatf(1.0)) 
	if randi() % 2 == 1:
		q_Particles2D.set_one_shot(Autoload.get_bool())
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Particles2D.set_pre_process_time(Autoload.get_floatf(1.0)) 
	if randi() % 2 == 1:
		q_Particles2D.set_speed_scale(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles2D.set_explosiveness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles2D.set_randomness_ratio(Autoload.get_float())
	if randi() % 2 == 1:
		q_Particles2D.set_fixed_fps(Autoload.get_int())
	if randi() % 2 == 1:
		q_Particles2D.set_fractional_delta(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles2D.set_visibility_rect(Autoload.get_rect2())
	if randi() % 2 == 1:
		q_Particles2D.set_use_local_coordinates(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Particles2D.set_draw_order(Autoload.get_int())

	if randi() % 2 == 1:
		q_Particles2D.set_process_material(ParticlesMaterial.new())
	if randi() % 2 == 1:
		q_Particles2D.set_texture(Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_Particles2D.set_normal_map(Autoload.loadA("Sprite.png"))

	if randi() % 2 == 1:
		q_Particles2D.capture_rect()
	if randi() % 2 == 1:
		q_Particles2D.restart()
