class_name LabelSocializingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.socializing_experience > 0:
		visible = true
	else:
		visible = false
