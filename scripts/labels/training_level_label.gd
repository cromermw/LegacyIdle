class_name LabelTrainingLevel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.training_experience > 0:
		visible = true
	else:
		visible = false
	if  Game.ref.data.training_experience > 1 + (Game.ref.data.training_level*2)*(Game.ref.data.training_level*2):
		HandlerExperience.ref.perform_level_up(5)
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.training_level)
