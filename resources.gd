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
