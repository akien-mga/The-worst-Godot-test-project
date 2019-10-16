extends VideoPlayer

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_audio_track(Autoload.get_int())
		if randi() % 2 == 1:
			set_stream(Autoload.loadA("VideoStreamWebm.tres"))
		if randi() % 2 == 1:
			set_volume_db(Autoload.get_float())
		if randi() % 2 == 1:
			set_volume(Autoload.get_float())
		if randi() % 2 == 1:
			set_autoplay(Autoload.get_bool())
		if randi() % 2 == 1:
			set_paused(Autoload.get_bool())
		if randi() % 2 == 1:
			set_expand(Autoload.get_bool())
		if randi() % 2 == 1:
			set_buffering_msec(Autoload.get_int())
		if randi() % 2 == 1:
			set_stream_position(Autoload.get_float())
		if randi() % 2 == 1:
			set_bus(Autoload.get_string())

		if randi() % 2 == 1:
			Autoload.qq = str(get_stream_name())
		if randi() % 2 == 1:
			Autoload.qq = str(get_video_texture())
		if randi() % 2 == 1:
			Autoload.qq = str(is_playing())
		if randi() % 2 == 1:
			play()
		if randi() % 2 == 1:
			stop()
