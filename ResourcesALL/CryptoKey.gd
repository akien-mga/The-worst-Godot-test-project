extends Node2D

var q_CryptoKey : CryptoKey = CryptoKey.new()
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
			q_CryptoKey = CryptoKey.new()
		
		
		if randi() % 2 == 1:
			qq += str(q_CryptoKey.load("Lelele"))
		if randi() % 2 == 1:
			qq += str(q_CryptoKey.save("gqwrw"))