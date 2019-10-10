extends Particles

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		var pm : ParticlesMaterial = ParticlesMaterial.new()
		var CT : CurveTexture  = CurveTexture.new()
	
		if randi() % 2 == 1:
			set_emitting(bool(randi()%2))
		if randi() % 2 == 1:
			set_amount(randi()%4 - 2)
		if randi() % 2 == 1:
			set_lifetime(randf() - 0.5)
		if randi() % 2 == 1:
			set_one_shot(bool(randi()%2))
		if randi() % 2 == 1:
			set_pre_process_time(randf() * 1 - 0.5)
		if randi() % 2 == 1:
			set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_explosiveness_ratio(randf())
		if randi() % 2 == 1:
			set_randomness_ratio(randf())
		if randi() % 2 == 1:
			set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_fractional_delta(bool(randi()%2))
		if randi() % 2 == 1:
			set_visibility_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			set_use_local_coordinates(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			# Luka na process_material ktnory jest na koncu
		if randi() % 2 == 1:
			set_draw_pass_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2, CubeMesh.new())
			
		if randi() % 2 == 1:
			pm.set_render_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			CT = CurveTexture.new()
		if randi() % 2 == 1:
			CT.set_width(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			CT.set_curve(Autoload.loadA("res://RES/Curve.tres"))
		if randi() % 2 == 1:
			pm.set_trail_divisor(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_trail_size_modifier(CT)
		if randi() % 2 == 1:
			pm.set_trail_color_modifier(Autoload.loadA("res://RES/Gradient.tres"))
		if randi() % 2 == 1:
			pm.set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			pm.set_emission_point_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			pm.set_emission_normal_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			pm.set_emission_color_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			pm.set_emission_point_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			pm.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			pm.set_color_ramp(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			
		if randi() % 2 == 1:
			pm.set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
			
		if randi() % 2 == 1:
			pm.set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			pm.set_param_texture(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			
		if randi() % 2 == 1:
			restart()
			
		set_process_material(pm)
			
