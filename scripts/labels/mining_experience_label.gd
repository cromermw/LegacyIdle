class_name LabelMiningExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.mining_experience > 0:
		visible = true
	else:
		visible = false
