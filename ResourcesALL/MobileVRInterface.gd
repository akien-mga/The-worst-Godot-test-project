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
		
		var q_MobileVRInterface : MobileVRInterface = MobileVRInterface.new()
		
		q_MobileVRInterface.set_eye_height(randf() * 50)
		q_MobileVRInterface.set_iod(randf() * 50)
		q_MobileVRInterface.set_display_width(randf() * 50)
		q_MobileVRInterface.set_display_to_lens(randf() * 50)
		q_MobileVRInterface.set_oversample(randf() * 50)
		q_MobileVRInterface.set_k1(randf() * 50)
		q_MobileVRInterface.set_k2(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_MobileVRInterface.set_eye_height(randf() * 50)
			q_MobileVRInterface.set_iod(randf() * 50)
			q_MobileVRInterface.set_display_width(randf() * 50)
			q_MobileVRInterface.set_display_to_lens(randf() * 50)
			q_MobileVRInterface.set_oversample(randf() * 50)
			q_MobileVRInterface.set_k1(randf() * 50)
			q_MobileVRInterface.set_k2(randf() * 50)
			
			