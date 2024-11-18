class_name LabelTradingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.trading_experience > 0:
		visible = true
	else:
		visible = false
	update_text()	


func update_text() -> void:
	text = str("exp: ", Game.ref.data.trading_experience, " / ", 1 + (Game.ref.data.trading_level*2)*(Game.ref.data.trading_level*2))
