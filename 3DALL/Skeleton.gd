extends Skeleton

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
		
#		set_use_bones_in_world_transform(bool(randi()%2))
#
#		for _i in range(10):
#			add_bone(str(randi() % 2525))
#		bind_child_node_to_bone(0,self)
		#NA KONIEC clear_bones()
#		qq += str(find_bone("asfqw"))
#
#		qq += str(get_bone_count())
#		qq += str(get_bone_custom_pose(0))
#		qq += str(get_bone_global_pose(0))
#		qq += str(get_bone_name(0))
#		qq += str(get_bone_parent(0))
#		qq += str(get_bone_pose(0))
#		qq += str(get_bone_rest(0))
#		qq += str(get_bone_transform(0))
#		qq += str(get_bound_child_nodes_to_bone(0))
#
#		qq += str(is_bone_rest_disabled(0))
##		localize_rests()
#
#		#physical_bones_add_collision_exception(RID())
#		#physical_bones_remove_collision_exception(RID())
#		#physical_bones_start_simulation()
#		physical_bones_stop_simulation()
#		set_bone_custom_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_disable_rest(0,bool(randi()%2))
#		set_bone_global_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_ignore_animation(0,bool(randi()%2))
#		set_bone_parent(0,1)
#		set_bone_pose(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		set_bone_rest(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#
##		unbind_child_node_from_bone(0,self)
##		unparent_bone_and_rest(0)
#
#		clear_bones() # ZE SRODKA