extends Node2D

#var q_JSONRPC : JSONRPC = JSONRPC.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)
#
#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
##		if randi() % 2 == 1:
##	LEAK		q_JSONRPC.free()
##			q_JSONRPC = JSONRPC.new()
#
#
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.make_notification("Zbyt", Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.make_request("Zbyt", Autoload.get_randi(), Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.make_response(Autoload.get_randi(), Autoload.get_randi()))
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.make_response_error(Autoload.get_randi(), "MESSAGE", Autoload.get_randi()))
#
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.process_action(Autoload.get_randi(), bool(randi()%2)))
#		if randi() % 2 == 1:
#			qq += str(q_JSONRPC.process_string("Za"))
#
#		if randi() % 2 == 1:
#			q_JSONRPC.set_scope("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaAA", self)
#
#func delete_node():
#	q_JSONRPC.free()