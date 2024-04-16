extends HBoxContainer

@onready var left_b := $LeftButton
@onready var right_b := $RightButton
@onready var bpm_label := $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_left_button_pressed() -> void:
	if $"../Node2D".bpm <= 60:
		$"../Node2D".bpm = 60
		return
		
	$"../Node2D".bpm -= 1
	bpm_label.text = str($"../Node2D".bpm)
	



func _on_right_button_pressed() -> void:
	if $"../Node2D".bpm == 240:
		$"../Node2D".bpm = 240
		return
		
	$"../Node2D".bpm += 1
	bpm_label.text = str($"../Node2D".bpm)
