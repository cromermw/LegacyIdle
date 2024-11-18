class_name MinerTitle
extends Control

var base_mining_experience_requirement : float = 10
	

func _process(_delta: float) -> void:
	if Game.ref.data.miner_title_unlocked == false:
		if Game.ref.data.mining_experience >= base_mining_experience_requirement * Game.ref.data.title_requirement_multiplier * Game.ref.data.title_requirement_reduction_multiplier:
			HandlerTitles.ref.unlock_title(1)
			HandlerResources.ref.apply_multiplier(4, 2)
