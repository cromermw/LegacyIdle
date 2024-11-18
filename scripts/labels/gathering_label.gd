class_name LabelGathering
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.gathering_experience > 0:
		visible = true
	else:
		visible = false
