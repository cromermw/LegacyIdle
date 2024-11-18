class_name LabelIngot
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.ingot > 0:
		visible = true
	else:
		visible = false
