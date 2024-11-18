class_name LabelWoodcutterTitle
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.woodcutter_title_unlocked == true:
		visible = true
	else:
		visible = false
