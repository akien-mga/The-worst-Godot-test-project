extends MenuButton

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_switch_on_hover(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(get_popup())
		if randi() % 2 == 1:
			set_disable_shortcuts(Autoload.get_bool())
