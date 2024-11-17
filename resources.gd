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
