class_name WoodValueLabel
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.wood > 0:
		visible = true
	else:
		visible = false
	update_text()	
	
func update_text() -> void:
	text = str(Game.ref.data.wood)
