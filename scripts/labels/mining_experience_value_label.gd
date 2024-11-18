class_name LabelMiningExperienceValue
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.mining_experience > 0:
		visible = true
	else:
		visible = false
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.mining_experience)
