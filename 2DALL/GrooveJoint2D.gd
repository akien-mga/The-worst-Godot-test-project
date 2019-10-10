extends GrooveJoint2D

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
			set_length(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_initial_offset(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_bias(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_exclude_nodes_from_collision(bool(randi()%2))
