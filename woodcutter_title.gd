class_name WoodcutterTitle
extends Control


var base_woodcutting_experience_requirement : float = 10
	

func _process(_delta: float) -> void:
	if Game.ref.data.woodcutter_title_unlocked == false:
		if Game.ref.data.woodcutting_experience >= base_woodcutting_experience_requirement * Game.ref.data.title_requirement_multiplier * Game.ref.data.title_requirement_reduction_multiplier:
			HandlerTitles.ref.unlock_title(0)
			HandlerResources.ref.apply_multiplier(3, 2)
