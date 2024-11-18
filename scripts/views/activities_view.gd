class_name ActivitiesView
extends Control

@export var activityTimer : Timer
@export var liveButton : Button
@export var craftButton : Button
@export var gatherButton : Button
@export var socializeButton : Button
@export var studyButton : Button
@export var tradeButton : Button
@export var trainButton : Button
@export var workButton : Button
@export var worshipButton : Button
@export var gatherOreButton : Button
@export var gatherWoodButton : Button
@export var craftCharcoalButton : Button
@export var craftIngotButton : Button


func get_activity_button_array() -> Array:
	var activity_button_array : Array = [ 
	craftButton,
	gatherButton,
	socializeButton,
	studyButton,
	tradeButton,
	trainButton,
	worshipButton,
	workButton,]
	
	return activity_button_array


func get_sub_activity_button_array() -> Array:
	var sub_activity_button_array : Array = [ 
	gatherWoodButton,
	gatherOreButton,
	craftCharcoalButton,
	craftIngotButton,
	]
	
	return sub_activity_button_array


func begin_timer() -> void:
	activityTimer.wait_time = 1
	if activityTimer.is_stopped() == true:
		activityTimer.start()


func get_activity_button() -> Button:
	var activity_button_array = get_activity_button_array()
	
	for button in activity_button_array:
		if button.disabled == true:
			return button
	
	return liveButton


func get_sub_activity_button() -> Button:
	var sub_activity_button_array = get_sub_activity_button_array()
	
	for button in sub_activity_button_array:
		if button.disabled == true:
			return button
	
	return


func reward_random(num_rewards) -> void:
	var reward : int
	
	for iteration in num_rewards:
		reward = randi_range(0, 5)
		HandlerResources.ref.create_attribute(reward, 1)


func _on_activities_timer_timeout() -> void:
	var num_rewards = Game.ref.data.num_rewards
	var activityButton : Button = get_activity_button()
	var subActivityButton : Button = get_sub_activity_button()
	
	reward_random(num_rewards)
	
	if activityButton == liveButton:
		pass
	elif activityButton == craftButton:
		HandlerResources.ref.create_attribute(4, 1)
		HandlerResources.ref.create_attribute(5, 1)
		HandlerResources.ref.award_experience(0, 2)
	elif activityButton == gatherButton:
		HandlerResources.ref.create_attribute(2, 1)
		HandlerResources.ref.create_attribute(5, 1)
		HandlerResources.ref.award_experience(1, 2)
	elif activityButton == socializeButton:
		HandlerResources.ref.create_attribute(0, 2)
		HandlerResources.ref.award_experience(2, 2)
	elif activityButton == studyButton:
		HandlerResources.ref.create_attribute(4, 2)
		HandlerResources.ref.award_experience(3, 2)
	elif activityButton == tradeButton:
		HandlerResources.ref.create_attribute(3, 1)
		HandlerResources.ref.create_attribute(5, 1)
		HandlerResources.ref.award_experience(4, 2)
	elif activityButton == trainButton:
		HandlerResources.ref.create_attribute(2, 2)
		HandlerResources.ref.award_experience(5, 2)
	elif activityButton == workButton:
		HandlerResources.ref.create_attribute(3, 2)
		HandlerResources.ref.award_experience(6, 2)
	elif activityButton == worshipButton:
		HandlerResources.ref.create_attribute(1, 2)
		HandlerResources.ref.award_experience(7, 2)
	else:
		pass

	if subActivityButton == gatherWoodButton:
		HandlerResources.ref.create_resource(0, 1)
	elif subActivityButton == gatherOreButton:
		HandlerResources.ref.create_resource(1, 1)
	elif subActivityButton == craftCharcoalButton:
		if HandlerResources.ref.consume_resource(0, 1) == Error.OK:
			HandlerResources.ref.create_resource(2, 1)
	elif subActivityButton == craftIngotButton:
		if HandlerResources.ref.consume_resource(1, 1) == Error.OK and HandlerResources.ref.consume_resource(2, 1) == Error.OK:
			HandlerResources.ref.create_resource(3, 1)
	else:
		pass


func perform_activity(activity) -> void:
	if activity == 0:
		pass
	else:
		HandlerResources.ref.create_attribute(activity, 1)


func button_pressed(array, pressed_button) -> void:
	if array == 1:
		var activity_button_array = get_activity_button_array()
		for button in activity_button_array:
			button.disabled = false
		pressed_button.disabled = true
	elif array == 2:
		var activity_button_array = get_sub_activity_button_array()
		for button in activity_button_array:
			button.disabled = false
		pressed_button.disabled = true


func manage_sub_activity_buttons() -> void:
	if gatherButton.disabled == true and Game.ref.data.gathering_experience > 9:
		gatherOreButton.visible = true
		gatherWoodButton.visible = true
	else:
		gatherWoodButton.disabled = false
		gatherWoodButton.visible = false
		gatherOreButton.disabled = false
		gatherOreButton.visible = false
	if craftButton.disabled == true and Game.ref.data.crafting_experience > 9:
		if Game.ref.data.wood > 0:
			craftCharcoalButton.visible = true
		else:
			craftCharcoalButton.disabled = false
			craftCharcoalButton.visible = false
		if Game.ref.data.charcoal > 0 and Game.ref.data.ore > 0:
			craftIngotButton.visible = true
		else:
			craftIngotButton.disabled = false
			craftIngotButton.visible = false
	else:
		craftCharcoalButton.disabled = false
		craftCharcoalButton.visible = false
		craftIngotButton.disabled = false
		craftIngotButton.visible = false


func initialize_buttons() -> void:
	var activity_button_array = get_activity_button_array()
	var sub_activity_button_array = get_sub_activity_button_array()
	for button in activity_button_array:
		button.disabled = true
	for button in sub_activity_button_array:
		button.disabled = false


func _on_live_button_pressed() -> void:
	begin_timer()
	button_pressed(1, liveButton)


func _on_craft_button_pressed() -> void:
	button_pressed(1, craftButton)


func _on_gather_button_pressed() -> void:
	button_pressed(1, gatherButton)


func _on_socialize_button_pressed() -> void:
	button_pressed(1, socializeButton)


func _on_study_button_pressed() -> void:
	button_pressed(1, studyButton)


func _on_trade_button_pressed() -> void:
	button_pressed(1, tradeButton)


func _on_train_button_pressed() -> void:
	button_pressed(1, trainButton)


func _on_work_button_pressed() -> void:
	button_pressed(1, workButton)


func _on_worship_button_pressed() -> void:
	button_pressed(1, worshipButton)


func _on_gather_ore_button_pressed() -> void:
	button_pressed(2, gatherOreButton)


func _on_gather_wood_button_pressed() -> void:
	button_pressed(2, gatherWoodButton)


func _on_craft_charcoal_button_pressed() -> void:
	button_pressed(2, craftCharcoalButton)


func _on_craft_ingot_button_pressed() -> void:
	button_pressed(2, craftIngotButton)


func _ready() -> void:
	initialize_buttons()


func _process(_delta: float) -> void:
	manage_sub_activity_buttons()
