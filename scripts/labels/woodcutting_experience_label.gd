class_name LabelWoodcutting
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.woodcutting_experience > 0:
		visible = true
	else:
		visible = false
