class_name LabelMinerTitle
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.miner_title_unlocked == true:
		visible = true
	else:
		visible = false
