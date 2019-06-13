extends Area

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		for i in get_children():
			if i.get_name().begins_with("Collision"):
				i.set_shape(BoxShape.new())
				i.set_disabled(bool(randi()%2))
				i.make_convex_from_brothers()
				i.resource_changed(BoxShape.new())
		
		set_space_override_mode(randi() % 5)
		set_gravity_is_point(bool(randi()%2))
		set_gravity_distance_scale(randf() * 50)
		set_gravity_vector(Vector3(randf() * 50,randf() * 50,randf() * 50))
		set_gravity(randf() * 50)
		set_linear_damp(randf() * 50) 
		set_angular_damp(randf() * 50)
		set_priority(randf() * 50) 
		set_monitoring(bool(randi()%2))
		set_monitorable(bool(randi()%2))
		set_collision_layer(randi()%4096)
		set_collision_mask(randi()%4096)
		set_audio_bus_override(bool(randi()%2))
		set_audio_bus(str(bool(randi()%2)))
		set_use_reverb_bus(bool(randi()%2))
		set_reverb_bus(str(bool(randi()%2)))
		set_reverb_amount(randf() * 50) 
		set_reverb_uniformity(randf() * 50) 
		
		
		qq += str(get_collision_layer_bit(randi()%20))
		qq += str(get_collision_mask_bit(randi()%20))
		if monitoring:
			qq += str(get_overlapping_areas())
			qq += str(get_overlapping_bodies())
		qq += str(overlaps_area(self))
		qq += str(overlaps_body(self))
		
		set_collision_layer_bit(randi()%20,randi()%2000)
		set_collision_mask_bit(randi()%20,randi()%2000)