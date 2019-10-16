extends GraphNode

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_title(Autoload.get_string())
		if randi() % 2 == 1:
			set_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_show_close_button(Autoload.get_bool())
		if randi() % 2 == 1:
			set_resizable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_selected(Autoload.get_bool())
		if randi() % 2 == 1:
			set_comment(Autoload.get_bool())
		if randi() % 2 == 1:
			set_overlay(Autoload.get_int())
		if randi() % 2 == 1:
			set_slot(Autoload.get_int(), Autoload.get_bool(), Autoload.get_int(), Autoload.get_color(), Autoload.get_bool(), Autoload.get_int(), Autoload.get_color(), Autoload.loadA("Sprite.png"), Autoload.loadA("Sprite.png"))#Not in position
		if randi() % 2 == 1:
			clear_slot(Autoload.get_int())
		if randi() % 2 == 1:
			clear_all_slots()
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_input_color(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_input_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_input_position(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_input_type(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_output_color(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_output_count())
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_output_position(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_connection_output_type(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_slot_color_left(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_slot_color_right(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_slot_type_left(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_slot_type_right(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_slot_enabled_left(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_slot_enabled_right(Autoload.get_int()))
