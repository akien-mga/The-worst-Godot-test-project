extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var q_VisualShader : VisualShader = VisualShader.new()
		
		#q_VisualShader.add_node( randi() % VisualShader.TYPE_MAX, VisualShaderNode.new(), Vector2(randf() * 50,randf() * 50), 0 )
		qq += str(q_VisualShader.can_connect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
		
		#qq += str(q_VisualShader.connect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
		q_VisualShader.connect_nodes_forced( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 )
		
		q_VisualShader.disconnect_nodes( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 )
		
		qq += str(q_VisualShader.get_node( randi() % VisualShader.TYPE_MAX, 0 ))
		qq += str(q_VisualShader.get_node_connections( randi() % VisualShader.TYPE_MAX ))
		qq += str(q_VisualShader.get_node_list( randi() % VisualShader.TYPE_MAX ))
		qq += str(q_VisualShader.get_node_position( randi() % VisualShader.TYPE_MAX, 0 ))
		qq += str(q_VisualShader.get_valid_node_id( randi() % VisualShader.TYPE_MAX ))
		
		qq += str(q_VisualShader.is_node_connection( randi() % VisualShader.TYPE_MAX, 1, 2, 3, 4 ))
		q_VisualShader.rebuild()
		#q_VisualShader.remove_node( randi() % VisualShader.TYPE_MAX, 0 )
		
		q_VisualShader.set_mode( randi() % 3 ) # Shader.Mode
		q_VisualShader.set_node_position( randi() % VisualShader.TYPE_MAX, 0, Vector2(randf() * 50,randf() * 50) )
		
		if Autoload.WRONG_BUGS:
			q_VisualShader.add_node( randi() % 1000 - 500, VisualShaderNode.new(), Vector2(randf() * 1000 - 500,randf() * 1000 - 500), randi() % 1000 - 500 )
			qq += str(q_VisualShader.can_connect_nodes( randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 ))
			
			qq += str(q_VisualShader.connect_nodes( randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 ))
			q_VisualShader.connect_nodes_forced( randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 )
			
			q_VisualShader.disconnect_nodes( randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 )
			
			qq += str(q_VisualShader.get_node( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_VisualShader.get_node_connections( randi() % 1000 - 500 ))
			qq += str(q_VisualShader.get_node_list( randi() % 1000 - 500 ))
			qq += str(q_VisualShader.get_node_position( randi() % 1000 - 500, randi() % 1000 - 500 ))
			qq += str(q_VisualShader.get_valid_node_id( randi() % 1000 - 500 ))
			
			qq += str(q_VisualShader.is_node_connection( randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500, randi() % 1000 - 500 ))
			q_VisualShader.rebuild()
			q_VisualShader.remove_node( randi() % 1000 - 500, randi() % 1000 - 500 )
			
			q_VisualShader.set_mode( randi() % 1000 - 500 ) # Shader.Mode
			q_VisualShader.set_node_position( randi() % 1000 - 500, randi() % 1000 - 500, Vector2(randf() * 1000 - 500,randf() * 1000 - 500) )