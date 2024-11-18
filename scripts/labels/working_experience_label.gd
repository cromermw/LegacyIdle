class_name LabelWorkingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.working_experience > 0:
		visible = true
	else:
		visible = false
