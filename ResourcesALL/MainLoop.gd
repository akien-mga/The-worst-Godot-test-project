extends Node2D

#var q_MainLoop : MainLoop = MainLoop.new()
onready var counter : float = Autoload.get_rand_time()

#
#
#
#
#func _process(delta) -> void:
#	counter -= delta
#
#
#
#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#		if randi() % 2 == 1:
#			q_MainLoop.free()
#			q_MainLoop = MainLoop.new()
#
		#q_MainLoop._drop_files( Autoload.get_poolstringarray(), Autoload.get_int() )
		#q_MainLoop._finalize()
		#q_MainLoop._idle( Autoload.get_float() )
		#q_MainLoop._initialize()
		#q_MainLoop._input_event( Autoload.loadA("InputEventAction.tres") )
		#q_MainLoop._input_text( Autoload.get_string() )
		#q_MainLoop._iteration( Autoload.get_float() )
#
#		if randi() % 2 == 1:
#			q_MainLoop.finish()
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_MainLoop.idle( Autoload.get_float() ))
#		if randi() % 2 == 1:
#			q_MainLoop.init()
#
#		if randi() % 2 == 1:
#			q_MainLoop.input_event( Autoload.loadA("InputEventAction.tres") )
#		if randi() % 2 == 1:
#			q_MainLoop.input_text( Autoload.get_string() )
#
#		if randi() % 2 == 1:
#			Autoload.qq = str(q_MainLoop.iteration( Autoload.get_float() ))
#
#
#func delete_node():
#	q_MainLoop.free()
