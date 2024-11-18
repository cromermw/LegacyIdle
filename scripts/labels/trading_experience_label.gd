class_name LabelTrading
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.trading_experience > 0:
		visible = true
	else:
		visible = false
