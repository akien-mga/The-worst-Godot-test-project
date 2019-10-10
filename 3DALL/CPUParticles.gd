extends CPUParticles

var counter : float
var counter_temp : int = 0
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func empty():
	pass
	
func empty2(var rrr, var rqw):
	var qq : String = ""
	qq += str(rrr)
	qq += str(rqw)
	qq = qq

func _process(delta) -> void:
	counter -= delta
	counter_temp += 1
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		var particles : Particles = Particles.new()
		if randi() % 2 == 1:
			set_emitting(bool(randi()%2))
		if randi() % 2 == 1:
			set_amount(randi() % 4 - 2)
		if randi() % 2 == 1:
			set_lifetime(randf() - 0.5)
		if randi() % 2 == 1:
			set_one_shot(bool(randi()%2))
		if randi() % 2 == 1:
			set_pre_process_time(randf() * 1 - 0.5)
		if randi() % 2 == 1:
			set_speed_scale(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_explosiveness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_randomness_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_fixed_fps(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_fractional_delta(bool(randi()%2))
		if randi() % 2 == 1:
			set_use_local_coordinates(bool(randi()%2))
		if randi() % 2 == 1:
			set_draw_order(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_mesh(Mesh.new())
		if randi() % 2 == 1:
			set_emission_shape(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_emission_sphere_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_emission_box_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_emission_points(PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
		if randi() % 2 == 1:
			set_emission_normals(PoolVector3Array([Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)]))
		if randi() % 2 == 1:
			set_emission_colors([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())])

		if randi() % 2 == 1:
			set_particle_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
				
		if randi() % 2 == 1:
			set_spread(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_flatness(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_gravity(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))

		if randi() % 2 == 1:
			set_param(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_param_curve(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Curve.tres"))
		if randi() % 2 == 1:
			set_param_randomness(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)

		if randi() % 2 == 1:
			convert_from_particles(particles)
		if randi() % 2 == 1:
			restart()
		particles.queue_free()
			
#			if Autoload.SLOW_FUNCTIONS:
#				##GeometryInstance
#				set_material_override(SpatialMaterial.new())
#				set_cast_shadows_setting(randi() % (SHADOW_CASTING_SETTING_SHADOWS_ONLY + 1))
#				set_extra_cull_margin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#
#				set_flag(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#
#				set_lod_min_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				set_lod_min_hysteresis(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				set_lod_max_distance(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				set_lod_max_hysteresis(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				set_custom_aabb(AABB(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
#
#				##VisualInstance
#				set_layer_mask(randi() % 1000000)
#				qq += str(get_aabb())
#				qq += str(get_base())
#				qq += str(get_instance())
#				qq += str(get_layer_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#				qq += str(get_transformed_aabb())
#				set_base(RID())
#				set_layer_mask_bit(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#
#				##Spatial
#				set_global_transform(Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
#				set_translation(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_rotation_degrees(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_rotation(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				set_transform(Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
#				set_visible(bool(randi()%2))
#				set_gizmo(SpatialGizmo.new())
#
#				force_update_transform()
#
#				qq += str(get_parent_spatial())
#				qq += str(get_world())
#
#				global_rotate(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				global_scale(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				global_translate(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#
#				hide()
#
#				qq += str(is_local_transform_notification_enabled())
#				qq += str(is_scale_disabled())
#				qq += str(is_set_as_toplevel())
#				qq += str(is_transform_notification_enabled())
#				qq += str(is_visible_in_tree())
#
#				look_at(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215))
#				look_at_from_position(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215))
#
#				orthonormalize()
#
#				rotate(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 150,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 100,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 15),randf() * Autoload.RANGE - Autoload.RANGE / 2 + 10)
#				rotate_object_local(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2 + 4,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 45,randf() * Autoload.RANGE - Autoload.RANGE / 2 + 215),randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				rotate_x(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				rotate_y(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#				rotate_z(randf() * Autoload.RANGE - Autoload.RANGE / 2)
#
#				scale_object_local(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#
#				set_as_toplevel(bool(randi()%2))
#				set_disable_scale(bool(randi()%2))
#				set_identity()
#				set_ignore_transform_notification(bool(randi()%2))
#				set_notify_local_transform(bool(randi()%2))
#				set_notify_transform(bool(randi()%2))
#
#				show()
#
#				qq += str(to_global(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
#				qq += str(to_local(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
#
#				translate(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#				translate_object_local(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
#
#				update_gizmo()
#
#				#Node
#				set_pause_mode(randi() % (PAUSE_MODE_PROCESS + 1))
#				set_name(str("asfafqwa") + str(randi() % 2541252))
#				set_filename(str("asfafqwa") + str(randi() % 2541252))
#				set_owner(get_parent())
#				qq += str(get_multiplayer())
#				set_custom_multiplayer(MultiplayerAPI.new())
#
#				###_exit_tree()
#				###_enter_tree()
#				###qq += str(_get_configuration_warning())
#				###_input(InputEvent.new())
#				###_physics_process(0.0)
#				###_process(0.0)
#				###_ready()
#				###_unhandled_input(InputEvent.new())
#				###_unhandled_key_input(InputEventKey.new())
#				for _i in range(10):
#					if get_child_count() > 3:
#						break 
#					add_child(TextureButton.new(),bool(randi()%2))
#				add_child_below_node(get_child(randi() % Autoload.RANGE - Autoload.RANGE / 2),get_child(randi() % Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2))
#				add_to_group("asfqwtg",bool(randi()%2))
#
#				qq += str(can_process())
#				var nooo : Node = duplicate(randi() % Autoload.RANGE - Autoload.RANGE / 2) # DuplicateFlags
#				if nooo != null:
#					nooo.queue_free()
#
#				qq += str(find_node("asfqgwq",bool(randi()%2),bool(randi()%2)))
#				qq += str(find_parent("fqwfqwgf a"))
#
#				qq += str(get_child(randi() % Autoload.RANGE - Autoload.RANGE / 2))
#				qq += str(get_child_count())
#				qq += str(get_children())
#				qq += str(get_groups())
#				qq += str(get_index())
#				qq += str(get_network_master())
#				qq += str(get_node(NodePath("./CPUParticasfasfales_ALL")))
#				qq += str(get_node_and_resource(NodePath("./CPUPartasfasfasficles_ALL")))
#				qq += str(get_node_or_null(NodePath("./CPUPaasfasfacles_ALL")))
#				qq += str(get_parent())
#				qq += str(get_path())
#				qq += str(get_path_to(get_parent()))
#				qq += str(get_physics_process_delta_time())
#				qq += str(get_position_in_parent())
#				qq += str(get_process_delta_time())
#				qq += str(get_scene_instance_load_placeholder())
#				qq += str(get_tree())
#				qq += str(get_viewport())
#
#				qq += str(has_node(NodePath("awgasfafaagfa")))
#				qq += str(has_node_and_resource(NodePath("awgfasfasfagfa")))
#
#				qq += str(is_a_parent_of(self))
#				qq += str(is_displayed_folded())
#				qq += str(is_greater_than(get_parent()))
#				qq += str(is_in_group("asfafqaw"))
#				qq += str(is_inside_tree())
#				qq += str(is_network_master())
#				qq += str(is_physics_processing())
#				qq += str(is_physics_processing_internal())
#				qq += str(is_processing())
#				qq += str(is_processing_input())
#				qq += str(is_processing_internal())
#				qq += str(is_processing_unhandled_input())
#				qq += str(is_processing_unhandled_key_input())
#
#				move_child(get_child(randi() % Autoload.RANGE - Autoload.RANGE / 2),randi() % Autoload.RANGE - Autoload.RANGE / 2)
#
#				#This only spam output
#				###print_stray_nodes()
#				###print_tree()
#				###print_tree_pretty()
#
#				propagate_call("asfafqwtgq",["asfqwag"],bool(randi()%2))
#				propagate_notification(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#
#				###queue_free()
#				raise()
#
#				###remove_and_skip() ## ?
#				var child_number = get_child(randi() % get_child_count())
#				var cn = randi() % Autoload.RANGE - Autoload.RANGE / 2
#				child_number = get_child(cn)
#				if cn >= 0 && cn < get_child_count():
#					remove_child(child_number)
#					child_number.queue_free()
#				remove_from_group("asfqwtg")
#
#				replace_by(get_child(randi() % Autoload.RANGE - Autoload.RANGE / 2),bool(randi()%2))
#				request_ready()
#
#				qq += str(rpc("asfqwgag"))
#				rpc_config("agfqwege",randi() % Autoload.RANGE - Autoload.RANGE / 2)
#				qq += str(rpc_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,"asfqwqt"))
#				qq += str(rpc_unreliable("asfqwgtq"))
#				qq += str(rpc_unreliable_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,"asfqwfqw"))
#
#				rset("afqwfasf", CubeMesh.new())
#				rset_config("agfqwege",randi() % Autoload.RANGE - Autoload.RANGE / 2)
#				rset_id(randi() % Autoload.RANGE - Autoload.RANGE / 2, "faqawfwqa",CubeMesh.new())
#				rset_unreliable("asfqwgtq", CubeMesh.new())
#				rset_unreliable_id(randi() % Autoload.RANGE - Autoload.RANGE / 2,"asfqwfqw",CubeMesh.new())
#
#				set_display_folded(bool(randi()%2))
#				set_network_master(randi() % Autoload.RANGE - Autoload.RANGE / 2,bool(randi()%2))
#				set_physics_process(bool(randi()%2))
#				set_physics_process_internal(bool(randi()%2))
#				###set_process(bool(randi()%2))
#				set_process_input(bool(randi()%2))
#				set_process_internal(bool(randi()%2))
#				###set_process_priority(randi() % Autoload.RANGE - Autoload.RANGE / 2)
#				set_process_unhandled_input(bool(randi()%2))
#				set_process_unhandled_key_input(bool(randi()%2))
#				set_scene_instance_load_placeholder(bool(randi()%2))
#
#
#				#Object
#				###qq += str(_get("astaf"))
#				###qq += str(_get_property_list())
#				###_init()
#				###_notification(randi()%50)
#				###qq += str(_set("SAasa",TextEdit.new()))
#				###qq += str(_to_string())
#
#				add_user_signal("asfqasffq" + str(counter_temp))
#
#				qq += str(call("empty"))
#				qq += str(call_deferred("empty"))
#				qq += str(callv("empty2",[randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2]))
#
#				qq += str(can_translate_messages())
#				qq += str(connect("script_changed",self,"get",["emfafpty"],randi() % Autoload.RANGE - Autoload.RANGE / 2)) # ConnectFlags
#				disconnect("script_c1251hanged",self,"get")
#				qq += str(emit_signal("script_ch125anged"))
#				###free()
#
#				qq += str(get("afasfq"))
#				qq += str(get_class())
#				qq += str(get_incoming_connections())
#				qq += str(get_indexed("asfafqw"))
#				qq += str(get_instance_id())
#				if.has_meta("asfqwfag"):
#					qq += str(get_meta("asfqwfag"))
#				qq += str(get_meta_list())
#				qq += str(get_method_list())
#				qq += str(get_property_list())
#				qq += str(get_script())
#				qq += str(get_signal_connection_list("script_changed"))
#				qq += str(get_signal_list())
#
#				qq += str(has_meta("asfasfas"))
#				qq += str(has_method("asfasfas"))
#				qq += str(has_user_signal("asfasfas"))
#
#				qq += str(is_blocking_signals())
#				qq += str(is_class("asfasfas"))
#				qq += str(is_connected("script_changed",self,"get"))
#				qq += str(is_queued_for_deletion())
#
#				#Better do not touch this BUG
#				#for i in range(2000):
#				#	print(i)
#				#	if (i != 10)&&(i != 11)&&(i != 41):
#				#		notification(i,bool(randi()%2))
#				###notification(randi()%1000,bool(randi()%2))
#				property_list_changed_notify()
#				remove_meta("afqwqwasfaar")
#
#				set("qfafaasffdc",CubeMesh.new())
#				set_block_signals(bool(randi()%2))
#				set_deferred("asasfafqwfq",CubeMesh.new())
#				set_indexed("asfasfqwfqw",CubeMesh.new())
#				set_message_translation(bool(randi()%2))
#				set_meta("fsafassfafwqa", CubeMesh.new())
#				#set_script(Reference.new())
#
#				qq += str(to_string())
#				qq += str(tr("asfqwasfasfqwt        "))
				
