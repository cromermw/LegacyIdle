class_name HandlerTitles
extends Node
##Manages reputation


## singleton reference
static var ref : HandlerTitles


## singleton check
func _enter_tree() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()

func unlock_title(title) -> void:
	if title == 0:
		Game.ref.data.woodcutter_title_unlocked = true
	elif title == 1:
		Game.ref.data.miner_title_unlocked = true
