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


func get_activity_button_array() -> Array:
	var button_array : Array = [ 
	craftButton,
	gatherButton,
	socializeButton,
	studyButton,
	tradeButton,
	trainButton,
	worshipButton,
	workButton,]
	
	return button_array



func begin_timer() -> void:
	activityTimer.wait_time = 1
	if activityTimer.is_stopped() == true:
		activityTimer.start()
		print("Timer started")


func get_activity_button() -> Button:
	var button_array = get_activity_button_array()
	var resultbutton : Button 
	
	for button in button_array:
		if button.disabled == true:
			resultbutton = button
			return resultbutton
	
	return liveButton


func reward_random(num_rewards) -> void:
	var reward : int
	
	for iteration in num_rewards:	
		reward = randi_range(0, 5)
		HandlerResources.ref.create_attribute(reward, 1)


func _on_activities_timer_timeout() -> void:
	var num_rewards = HandlerResources.ref.num_rewards
	var activityButton : Button = get_activity_button()

	reward_random(num_rewards)
	print("timer finished")
	
	if activityButton == craftButton:
		pass
	elif activityButton == gatherButton:
		pass
	elif activityButton == socializeButton:
		pass
	elif activityButton == studyButton:
		pass
	elif activityButton == tradeButton:
		pass
	elif activityButton == trainButton:
		pass
	elif activityButton == workButton:
		pass
	elif activityButton == worshipButton:
		pass
	else:
		pass


func perform_activity(activity) -> void:
	if activity == 0:
		pass
	else:
		HandlerResources.ref.create_attribute(activity, 1)


func button_pressed(pressed_button) -> void:
	var button_array = get_activity_button_array()
	for button in button_array:
		button.disabled = false
	pressed_button.disabled = true


func _on_live_button_pressed() -> void:
	button_pressed(liveButton)


func _on_craft_button_pressed() -> void:
	button_pressed(craftButton)


func _on_gather_button_pressed() -> void:
	button_pressed(gatherButton)


func _on_socialize_button_pressed() -> void:
	button_pressed(socializeButton)


func _on_study_button_pressed() -> void:
	button_pressed(studyButton)


func _on_trade_button_pressed() -> void:
	button_pressed(tradeButton)


func _on_train_button_pressed() -> void:
	button_pressed(trainButton)


func _on_work_button_pressed() -> void:
	button_pressed(workButton)


func _on_worship_button_pressed() -> void:
	button_pressed(worshipButton)


func _ready() -> void:
	var button_array = get_activity_button_array()
	for button in button_array:
		button.disabled = true
