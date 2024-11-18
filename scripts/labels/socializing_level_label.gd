class_name LabelSocializingLevel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.socializing_experience > 0:
		visible = true
	else:
		visible = false
	if  Game.ref.data.socializing_experience > 1 + (Game.ref.data.socializing_level*2)*(Game.ref.data.socializing_level*2):
		HandlerExperience.ref.perform_level_up(2)
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.socializing_level)
