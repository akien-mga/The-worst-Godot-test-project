extends Node2D

var q_PacketPeerStream : PacketPeerStream = PacketPeerStream.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PacketPeerStream = PacketPeerStream.new()

		if randi() % 2 == 1:
			q_PacketPeerStream.set_input_buffer_max_size(Autoload.get_int())
		if randi() % 2 == 1:
			q_PacketPeerStream.set_output_buffer_max_size(Autoload.get_int())
		if randi() % 2 == 1:
			q_PacketPeerStream.set_stream_peer(StreamPeer.new())
