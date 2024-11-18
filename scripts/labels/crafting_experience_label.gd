class_name LabelCraftingExperience
extends Label

func _process(_delta: float) -> void:
	if Game.ref.data.crafting_experience > 0:
		visible = true
	else:
		visible = false
