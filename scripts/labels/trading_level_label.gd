class_name LabelTradingLevel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.trading_experience > 0:
		visible = true
	else:
		visible = false
	if  Game.ref.data.trading_experience > 1 + (Game.ref.data.trading_level*2)*(Game.ref.data.trading_level*2):
		HandlerExperience.ref.perform_level_up(4)
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.trading_level)
