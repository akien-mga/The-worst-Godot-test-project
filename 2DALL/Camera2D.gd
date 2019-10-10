extends Camera2D

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
		var viewport_temp : Viewport = Viewport.new()

		if randi() % 2 == 1:
			set_offset(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_anchor_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_rotating(bool(randi()%2))
		if randi() % 2 == 1:
			_set_current(bool(randi()%2))
		if randi() % 2 == 1:
			set_zoom(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			if get_custom_viewport():
				set_custom_viewport(viewport_temp)
		if randi() % 2 == 1:
			set_process_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("limit_left",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("limit_top",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("limit_right",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("limit_bottom",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_limit_smoothing_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_h_drag_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_v_drag_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_enable_follow_smoothing(bool(randi()%2))
		if randi() % 2 == 1:
			set_follow_smoothing(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_v_offset(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_h_offset(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("drag_margin_left",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("drag_margin_top",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("drag_margin_right",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set("drag_margin_bottom",randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_screen_drawing_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_limit_drawing_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			set_margin_drawing_enabled(bool(randi()%2))
		if randi() % 2 == 1:
			align()
		if randi() % 2 == 1:
			qq += str(get_camera_position())
		if randi() % 2 == 1:
			qq += str(get_camera_screen_center())
		if randi() % 2 == 1:
			make_current()
		if randi() % 2 == 1:
			clear_current()
		if randi() % 2 == 1:
			reset_smoothing()
				
		viewport_temp.queue_free()
