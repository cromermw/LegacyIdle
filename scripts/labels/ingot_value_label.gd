class_name IngotValueLabel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.ingot > 0:
		visible = true
	else:
		visible = false
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.ingot)
