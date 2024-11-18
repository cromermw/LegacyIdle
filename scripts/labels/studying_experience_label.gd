class_name LabelStudying
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.studying_experience > 0:
		visible = true
	else:
		visible = false
