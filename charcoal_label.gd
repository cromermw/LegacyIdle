class_name LabelCharcoal
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.charcoal > 0:
		visible = true
	else:
		visible = false
