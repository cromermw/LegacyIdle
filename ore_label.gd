class_name LabelOre
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.ore > 0:
		visible = true
	else:
		visible = false
