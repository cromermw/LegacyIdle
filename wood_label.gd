class_name LabelWood
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.wood > 0:
		visible = true
	else:
		visible = false
