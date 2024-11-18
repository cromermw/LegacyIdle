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


func create_resource(resource : int, amount : int) -> void:
	if resource == 0:
		Game.ref.data.wood += int(amount*Game.ref.data.resource_multiplier*Game.ref.data.wood_multiplier)
	if resource == 1:
		Game.ref.data.ore += int(amount*Game.ref.data.resource_multiplier*Game.ref.data.ore_multiplier)
	if resource == 2:
		Game.ref.data.charcoal += int(amount*Game.ref.data.resource_multiplier*Game.ref.data.charcoal_multiplier)
	if resource == 3:
		Game.ref.data.ingot += int(amount*Game.ref.data.resource_multiplier*Game.ref.data.ingot_multiplier)


func consume_resource(resource : int, amount : int) -> Error:
	if resource == 0:
		if amount > Game.ref.data.wood:
			return Error.FAILED
		else:
			Game.ref.data.wood -= int(amount*Game.ref.data.resource_reduction_multiplier*Game.ref.data.wood_reduction_multiplier)
			return Error.OK
	if resource == 1:
		if amount > Game.ref.data.ore:
			return Error.FAILED
		Game.ref.data.ore -= int(amount*Game.ref.data.resource_reduction_multiplier*Game.ref.data.ore_reduction_multiplier)
		return Error.OK
	if resource == 2:
		if amount > Game.ref.data.charcoal:
			return Error.FAILED
		else:
			Game.ref.data.charcoal -= int(amount*Game.ref.data.resource_reduction_multiplier*Game.ref.data.charcoal_reduction_multiplier)
			return Error.OK
	if resource == 3:
		if amount > Game.ref.data.ingot:
			return Error.FAILED
		else:
			Game.ref.data.ingot -= int(amount*Game.ref.data.resource_reduction_multiplier*Game.ref.data.ingot_reduction_multiplier)
			return Error.OK
	return Error.FAILED




func consume_attribute(attribute : int, amount : float):
	if attribute == 0:
		if amount > Game.ref.data.reputation:
			return Error.FAILED
		else:
			Game.ref.data.reputation -= amount
			return Error.OK
	if attribute == 1:
		if amount > Game.ref.data.karma:
			return Error.FAILED
		else:
			Game.ref.data.karma -= amount
			return Error.OK
	if attribute == 2:
		if amount > Game.ref.data.fitness:
			return Error.FAILED
		else:
			Game.ref.data.fitness -= amount
			return Error.OK
	if attribute == 3:
		if amount > Game.ref.data.wealth:
			return Error.FAILED
		else:
			Game.ref.data.wealth -= amount
			return Error.OK
	if attribute == 4:
		if amount > Game.ref.data.education:
			return Error.FAILED
		else:
			Game.ref.data.education -= amount
			return Error.OK
	if attribute == 5:
		if amount > Game.ref.data.reputation:
			return Error.FAILED
		else:
			Game.ref.data.wisdom -= amount
			return Error.OK








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
