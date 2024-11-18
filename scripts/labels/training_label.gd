class_name LabelTraining
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.training_experience > 0:
		visible = true
	else:
		visible = false
