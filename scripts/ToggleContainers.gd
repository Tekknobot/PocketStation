extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if button_pressed == true:	
		$"../Node2D/ScrollContainer".show()
		$"../Node2D/DrumContainer".hide()
	else:
		$"../Node2D/DrumContainer".show()
		$"../Node2D/ScrollContainer".hide()
