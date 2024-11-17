class_name Data
extends Resource
## contains data for saving and loading

## current amount of each attribute
@export var reputation : float = 0
@export var karma : float = 0
@export var fitness : float = 0
@export var wealth : float = 0
@export var education : float = 0
@export var wisdom : float = 0

##experience
@export var crafting_experience : float = 0
@export var gathering_experience : float = 0
@export var socializing_experience : float = 0
@export var studying_experience : float = 0
@export var trading_experience : float = 0
@export var training_experience : float = 0
@export var working_experience : float = 0
@export var worshiping_experience : float = 0

##multipliers and other upgrades
@export var reward_multiplier : float = 1
@export var experience_multiplier : float = 1
@export var num_rewards : int = 2
