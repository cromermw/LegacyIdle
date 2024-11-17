class_name HandlerResources
extends Node
##Manages reputation


## singleton reference
static var ref : HandlerResources


## singleton check
func _enter_tree() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()


func unlock_title() -> void:
	pass


## lock a title if it is made irrelevant by a higher title
func lock_title() -> void:
	pass


func create_attribute(attribute : int, amount : float) -> void:
	if attribute == 0:
		Game.ref.data.reputation += amount*Game.ref.data.reward_multiplier
	elif attribute == 1:
		Game.ref.data.karma += amount*Game.ref.data.reward_multiplier
	elif attribute == 2:
		Game.ref.data.fitness += amount*Game.ref.data.reward_multiplier
	elif attribute == 3:
		Game.ref.data.wealth += amount*Game.ref.data.reward_multiplier
	elif attribute == 4:
		Game.ref.data.education += amount*Game.ref.data.reward_multiplier
	elif attribute == 5:
		Game.ref.data.wisdom += amount*Game.ref.data.reward_multiplier


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
