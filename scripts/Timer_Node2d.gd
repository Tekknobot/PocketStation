extends Node2D

@export var pianoIndexArray: Array[Button]

@export_category("Octaves C3")
@export var C_Array: Array[Button]
@export var C_sharp_Array: Array[Button]
@export var D_Array: Array[Button]
@export var D_sharp_Array: Array[Button]
@export var E_Array: Array[Button]
@export var F_Array: Array[Button]
@export var F_sharp_Array: Array[Button]
@export var G_Array: Array[Button]
@export var G_sharp_Array: Array[Button]
@export var A_Array: Array[Button]
@export var A_sharp_Array: Array[Button]
@export var B_Array: Array[Button]

@export_category("Octaves C4")
@export var C4: Array[Button]
@export var C4_sharp: Array[Button]
@export var D4: Array[Button]
@export var D4_sharp: Array[Button]
@export var E4: Array[Button]
@export var F4: Array[Button]
@export var F4_sharp: Array[Button]
@export var G4: Array[Button]
@export var G4_sharp: Array[Button]
@export var A4: Array[Button]
@export var A4_sharp: Array[Button]
@export var B4: Array[Button]

@export_category("Octaves C5")
@export var C5: Array[Button]
@export var C5_sharp: Array[Button]
@export var D5: Array[Button]
@export var D5_sharp: Array[Button]
@export var E5: Array[Button]
@export var F5: Array[Button]
@export var F5_sharp: Array[Button]
@export var G5: Array[Button]
@export var G5_sharp: Array[Button]
@export var A5: Array[Button]
@export var A5_sharp: Array[Button]
@export var B5: Array[Button]

@export_category("Octaves C6")
@export var C6: Array[Button]
@export var C6_sharp: Array[Button]
@export var D6: Array[Button]
@export var D6_sharp: Array[Button]
@export var E6: Array[Button]
@export var F6: Array[Button]
@export var F6_sharp: Array[Button]
@export var G6: Array[Button]
@export var G6_sharp: Array[Button]
@export var A6: Array[Button]
@export var A6_sharp: Array[Button]
@export var B6: Array[Button]

@export_category("Drums")
@export var kickArray: Array[Button]
@export var snareArray: Array[Button]
@export var rimArray: Array[Button]
@export var clapArray: Array[Button]
@export var closedHatArray: Array[Button]
@export var openHatArray: Array[Button]
@export var crashArray: Array[Button]
@export var rideArray: Array[Button]


var time = 0.0 # current elapsed time in seconds
var step = 0 # current beat
var time_in_steps = 0.0

var x = 0.0
var bpm = 120

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../BPMSelector/Label".text = str(120)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if $"../Play".button_pressed == true:		
		time += delta
		time_in_steps = (time / (60.0 / bpm)) * 4
		
		# time == delta if we're on the very first beat
		# step != floor(time_in_steps) when this frame crosses into a new beat
		if time == delta or step != floor(time_in_steps):
			step = floor(time_in_steps)
			print(step)
			print(time_in_steps)
			
			# new beat has occured!
			pianoIndexArray[x].disabled = false		

			if C_Array[x].button_pressed == true:
				Controller.music_player.play_note(24, 1)												
			if C_sharp_Array[x].button_pressed == true:
				Controller.music_player.play_note(25, 1)
			if D_Array[x].button_pressed == true:
				Controller.music_player.play_note(26, 1)												
			if D_sharp_Array[x].button_pressed == true:
				Controller.music_player.play_note(27, 1)
			if E_Array[x].button_pressed == true:
				Controller.music_player.play_note(28, 1)												
			if F_Array[x].button_pressed == true:
				Controller.music_player.play_note(29, 1)			
			if F_sharp_Array[x].button_pressed == true:
				Controller.music_player.play_note(30, 1)												
			if G_Array[x].button_pressed == true:
				Controller.music_player.play_note(31, 1)
			if G_sharp_Array[x].button_pressed == true:
				Controller.music_player.play_note(32, 1)												
			if A_Array[x].button_pressed == true:
				Controller.music_player.play_note(33, 1)
			if A_sharp_Array[x].button_pressed == true:
				Controller.music_player.play_note(34, 1)												
			if B_Array[x].button_pressed == true:
				Controller.music_player.play_note(35, 1)	

			if C4[x].button_pressed == true:
				Controller.music_player.play_note(36, 1)												
			if C4_sharp[x].button_pressed == true:
				Controller.music_player.play_note(37, 1)
			if D4[x].button_pressed == true:
				Controller.music_player.play_note(38, 1)												
			if D4_sharp[x].button_pressed == true:
				Controller.music_player.play_note(39, 1)
			if E4[x].button_pressed == true:
				Controller.music_player.play_note(40, 1)												
			if F4[x].button_pressed == true:
				Controller.music_player.play_note(41, 1)			
			if F4_sharp[x].button_pressed == true:
				Controller.music_player.play_note(42, 1)												
			if G4[x].button_pressed == true:
				Controller.music_player.play_note(43, 1)
			if G4_sharp[x].button_pressed == true:
				Controller.music_player.play_note(44, 1)												
			if A4[x].button_pressed == true:
				Controller.music_player.play_note(45, 1)
			if A4_sharp[x].button_pressed == true:
				Controller.music_player.play_note(46, 1)												
			if B4[x].button_pressed == true:
				Controller.music_player.play_note(47, 1)

			if C5[x].button_pressed == true:
				Controller.music_player.play_note(48, 1)												
			if C5_sharp[x].button_pressed == true:
				Controller.music_player.play_note(49, 1)
			if D5[x].button_pressed == true:
				Controller.music_player.play_note(50, 1)												
			if D5_sharp[x].button_pressed == true:
				Controller.music_player.play_note(51, 1)
			if E5[x].button_pressed == true:
				Controller.music_player.play_note(52, 1)												
			if F5[x].button_pressed == true:
				Controller.music_player.play_note(53, 1)			
			if F5_sharp[x].button_pressed == true:
				Controller.music_player.play_note(54, 1)												
			if G5[x].button_pressed == true:
				Controller.music_player.play_note(55, 1)
			if G5_sharp[x].button_pressed == true:
				Controller.music_player.play_note(56, 1)												
			if A5[x].button_pressed == true:
				Controller.music_player.play_note(57, 1)
			if A5_sharp[x].button_pressed == true:
				Controller.music_player.play_note(58, 1)												
			if B5[x].button_pressed == true:
				Controller.music_player.play_note(59, 1)

			if C6[x].button_pressed == true:
				Controller.music_player.play_note(60, 1)												
			if C6_sharp[x].button_pressed == true:
				Controller.music_player.play_note(61, 1)
			if D6[x].button_pressed == true:
				Controller.music_player.play_note(62, 1)												
			if D6_sharp[x].button_pressed == true:
				Controller.music_player.play_note(63, 1)
			if E6[x].button_pressed == true:
				Controller.music_player.play_note(64, 1)												
			if F6[x].button_pressed == true:
				Controller.music_player.play_note(65, 1)			
			if F6_sharp[x].button_pressed == true:
				Controller.music_player.play_note(66, 1)												
			if G6[x].button_pressed == true:
				Controller.music_player.play_note(67, 1)
			if G6_sharp[x].button_pressed == true:
				Controller.music_player.play_note(68, 1)												
			if A6[x].button_pressed == true:
				Controller.music_player.play_note(69, 1)
			if A6_sharp[x].button_pressed == true:
				Controller.music_player.play_note(70, 1)												
			if B6[x].button_pressed == true:
				Controller.music_player.play_note(71, 1)

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
				pianoIndexArray[x].disabled = true
			else:	
				pianoIndexArray[x].disabled = true
				
				
			bpm = int($"../BPMSelector/Label".text)			
