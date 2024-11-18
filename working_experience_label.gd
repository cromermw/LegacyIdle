class_name LabelWorkingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.working_experience > 0:
		visible = true
	else:
		visible = false
	update_text()	


func update_text() -> void:
	text = str("exp: ", Game.ref.data.working_experience, " / ", 1 + (Game.ref.data.working_level*2)*(Game.ref.data.working_level*2))
