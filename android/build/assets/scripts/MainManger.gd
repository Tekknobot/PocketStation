extends Node2D

@export var indexArray: Array[Button]
@export var kickArray: Array[Button]
@export var snareArray: Array[Button]
@export var closedHatArray: Array[Button]
@export var openHatArray: Array[Button]
@export var clapArray: Array[Button]
@export var crashArray: Array[Button]
@export var rideArray: Array[Button]
@export var rimArray: Array[Button]

@export var pianoIndexArray: Array[Button]

var time = 0 # current elapsed time in seconds
var step = 0 # current beat
var time_in_steps = 0

var x = 0

var running = false
var bpm = 124

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if $Control/Play.button_pressed == true:	
		time += delta
		time_in_steps = (time / (60.0 / bpm)) * 4

		# time == delta if we're on the very first beat
		# beat != floor(time_in_beats) when this frame crosses into a new beat
		if time == delta or step != floor(time_in_steps):
			step = floor(time_in_steps)
			# new beat has occured!
			indexArray[x].disabled = false
			pianoIndexArray[x].disabled = false
			
			if kickArray[x].button_pressed == true:
				$KickStream.play()			
			if snareArray[x].button_pressed == true:
				$SnareStream.play()
			if closedHatArray[x].button_pressed == true:
				$CHStream.play()
			if openHatArray[x].button_pressed == true:
				$OHStream.play()			
			if clapArray[x].button_pressed == true:
				$ClapStream.play()
			if crashArray[x].button_pressed == true:
				$CrashStream.play()
			if rideArray[x].button_pressed == true:
				$RideStream.play()			
			if rimArray[x].button_pressed == true:
				$RimStream.play()	
													
			x += 1
			if x >= 16:
				x = 0
			else:
				indexArray[x].disabled = true	
				pianoIndexArray[x].disabled = true
				
			bpm = $Control/BPM_HSlider.value
			$Control/BPM_HSlider/BPM_Label.text	= str(int(bpm))
			
			
