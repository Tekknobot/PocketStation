extends Button

@export var houseKit: Array[AudioStreamWAV]
@export var hiphopKit: Array[AudioStreamWAV]
@export var rockKit: Array[AudioStreamWAV]
@export var boombapKit: Array[AudioStreamWAV]
@export var lofipKit: Array[AudioStreamWAV]
@export var technoKit: Array[AudioStreamWAV]
@export var triphopKit: Array[AudioStreamWAV]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed == true and text == "1":	
		$"../../../KickStream".stream = houseKit[0]
		$"../../../SnareStream".stream = houseKit[1]
		$"../../../RimStream".stream = houseKit[2]
		$"../../../ClapStream".stream = houseKit[3]
		$"../../../CHStream".stream = houseKit[4]
		$"../../../OHStream".stream = houseKit[5]
		$"../../../CrashStream".stream = houseKit[6]
		$"../../../RideStream".stream = houseKit[7]	

	if button_pressed == true and text == "2":	
		$"../../../KickStream".stream = hiphopKit[0]
		$"../../../SnareStream".stream = hiphopKit[1]
		$"../../../RimStream".stream = hiphopKit[2]
		$"../../../ClapStream".stream = hiphopKit[3]
		$"../../../CHStream".stream = hiphopKit[4]
		$"../../../OHStream".stream = hiphopKit[5]
		$"../../../CrashStream".stream = hiphopKit[6]
		$"../../../RideStream".stream = hiphopKit[7]	
		
	if button_pressed == true and text == "3":	
		$"../../../KickStream".stream = rockKit[0]
		$"../../../SnareStream".stream = rockKit[1]
		$"../../../RimStream".stream = rockKit[2]
		$"../../../ClapStream".stream = rockKit[3]
		$"../../../CHStream".stream = rockKit[4]
		$"../../../OHStream".stream = rockKit[5]
		$"../../../CrashStream".stream = rockKit[6]
		$"../../../RideStream".stream = rockKit[7]	
		
	if button_pressed == true and text == "4":	
		$"../../../KickStream".stream = boombapKit[0]
		$"../../../SnareStream".stream = boombapKit[1]
		$"../../../RimStream".stream = boombapKit[2]
		$"../../../ClapStream".stream = boombapKit[3]
		$"../../../CHStream".stream = boombapKit[4]
		$"../../../OHStream".stream = boombapKit[5]
		$"../../../CrashStream".stream = boombapKit[6]
		$"../../../RideStream".stream = boombapKit[7]	
		
	if button_pressed == true and text == "5":	
		$"../../../KickStream".stream = lofipKit[0]
		$"../../../SnareStream".stream = lofipKit[1]
		$"../../../RimStream".stream = lofipKit[2]
		$"../../../ClapStream".stream = lofipKit[3]
		$"../../../CHStream".stream = lofipKit[4]
		$"../../../OHStream".stream = lofipKit[5]
		$"../../../CrashStream".stream = lofipKit[6]
		$"../../../RideStream".stream = lofipKit[7]	

	if button_pressed == true and text == "6":	
		$"../../../KickStream".stream = technoKit[0]
		$"../../../SnareStream".stream = technoKit[1]
		$"../../../RimStream".stream = technoKit[2]
		$"../../../ClapStream".stream = technoKit[3]
		$"../../../CHStream".stream = technoKit[4]
		$"../../../OHStream".stream = technoKit[5]
		$"../../../CrashStream".stream = technoKit[6]
		$"../../../RideStream".stream = technoKit[7]							
		
	if button_pressed == true and text == "7":	
		$"../../../KickStream".stream = triphopKit[0]
		$"../../../SnareStream".stream = triphopKit[1]
		$"../../../RimStream".stream = triphopKit[2]
		$"../../../ClapStream".stream = triphopKit[3]
		$"../../../CHStream".stream = triphopKit[4]
		$"../../../OHStream".stream = triphopKit[5]
		$"../../../CrashStream".stream = triphopKit[6]
		$"../../../RideStream".stream = triphopKit[7]				
