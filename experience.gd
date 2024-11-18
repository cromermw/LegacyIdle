class_name HandlerExperience
extends Node
##Manages reputation


## singleton reference
static var ref : HandlerExperience


## singleton check
func _enter_tree() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()


func award_experience(category : int, amount : float) -> void:
	if category == 0:
		Game.ref.data.crafting_experience += amount*Game.ref.data.experience_multiplier
	elif category == 1:
		Game.ref.data.gathering_experience += amount*Game.ref.data.experience_multiplier
	elif category == 2:
		Game.ref.data.socializing_experience += amount*Game.ref.data.experience_multiplier
	elif category == 3:
		Game.ref.data.studying_experience += amount*Game.ref.data.experience_multiplier
	elif category == 4:
		Game.ref.data.trading_experience += amount*Game.ref.data.experience_multiplier
	elif category == 5:
		Game.ref.data.training_experience += amount*Game.ref.data.experience_multiplier
	elif category == 6:
		Game.ref.data.working_experience += amount*Game.ref.data.experience_multiplier
	elif category == 7:
		Game.ref.data.worshiping_experience += amount*Game.ref.data.experience_multiplier
	elif category == 8:
		Game.ref.data.woodcutting_experience += amount*Game.ref.data.experience_multiplier
	elif category == 9:
		Game.ref.data.mining_experience += amount*Game.ref.data.experience_multiplier		


func perform_level_up(category) -> void:
	if category == 0:
		Game.ref.data.crafting_experience -= 1 + (Game.ref.data.crafting_level*2)*(Game.ref.data.crafting_level*2)
		Game.ref.data.crafting_level += 1
	if category == 1:
		Game.ref.data.gathering_experience -= 1 + (Game.ref.data.gathering_level*2)*(Game.ref.data.gathering_level*2)
		Game.ref.data.gathering_level += 1
	if category == 2:
		Game.ref.data.socializing_experience -= 1 + (Game.ref.data.socializing_level*2)*(Game.ref.data.socializing_level*2)
		Game.ref.data.socializing_level += 1
	if category == 3:
		Game.ref.data.studying_experience -= 1 + (Game.ref.data.studying_level*2)*(Game.ref.data.studying_level*2)
		Game.ref.data.studying_level += 1
	if category == 4:
		Game.ref.data.trading_experience -= 1 + (Game.ref.data.trading_level*2)*(Game.ref.data.trading_level*2)
		Game.ref.data.trading_level += 1
	if category == 5:
		Game.ref.data.training_experience -= 1 + (Game.ref.data.training_level*2)*(Game.ref.data.training_level*2)
		Game.ref.data.training_level += 1
	if category == 6:
		Game.ref.data.working_experience -= 1 + (Game.ref.data.working_level*2)*(Game.ref.data.working_level*2)
		Game.ref.data.working_level += 1
	if category == 7:
		Game.ref.data.worshiping_experience -= 1 + (Game.ref.data.worshiping_level*2)*(Game.ref.data.worshiping_level*2)
		Game.ref.data.worshiping_level += 1
	if category == 8:
		Game.ref.data.woodcutting_experience -= 1 + (Game.ref.data.woodcutting_level*2)*(Game.ref.data.woodcutting_level*2)
		Game.ref.data.woodcutting_level += 1
	if category == 9:
		Game.ref.data.mining_experience -= 1 + (Game.ref.data.mining_level*2)*(Game.ref.data.mining_level*2)
		Game.ref.data.mining_level += 1
