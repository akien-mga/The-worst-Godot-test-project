extends Node2D

onready var counter : float = Autoload.get_rand_time()

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
#		var q_EditorResourceConversionPlugin : EditorResourceConversionPlugin = EditorResourceConversionPlugin.new()
#
#		q_EditorResourceConversionPlugin._convert( Resource.new() )
#		q_EditorResourceConversionPlugin._converts_to()
#
