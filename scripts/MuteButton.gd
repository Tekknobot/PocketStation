extends Button

@export var bus_name: String
var bus_index: int

# Called when the node enters the scene tree for the first time.
func _ready():
	bus_index = AudioServer.get_bus_index(bus_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if button_pressed == true:	
		AudioServer.set_bus_mute(bus_index, true)
	else:
		AudioServer.set_bus_mute(bus_index, false)
