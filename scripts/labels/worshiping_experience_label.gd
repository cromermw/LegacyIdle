class_name LabelWorshipingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.worshiping_experience > 0:
		visible = true
	else:
		visible = false
