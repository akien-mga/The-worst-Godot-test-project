extends Node2D

var q_PCKPacker : PCKPacker = PCKPacker.new()
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
		if randi() % 2 == 1:
			q_PCKPacker = PCKPacker.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_PCKPacker.add_file( "Znam", "Spotkanie" ))
		if randi() % 2 == 1:
			qq += str(q_PCKPacker.flush( bool(randi()%2)))
#	LEAK	if randi() % 2 == 1:
#			qq += str(q_PCKPacker.pck_start( "Krzywy",  randi() % Autoload.RANGE - Autoload.RANGE / 2))
