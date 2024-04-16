extends ScrollContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# wait a frame
	await get_tree().process_frame 	
	scroll_vertical = get_v_scroll_bar().max_value / 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
