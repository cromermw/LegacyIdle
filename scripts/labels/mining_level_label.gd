class_name LabelMiningLevel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.mining_experience > 0:
		visible = true
	else:
		visible = false
	if  Game.ref.data.mining_experience > 1 + (Game.ref.data.mining_level*2)*(Game.ref.data.mining_level*2):
		HandlerExperience.ref.perform_level_up(9)
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.mining_level)
