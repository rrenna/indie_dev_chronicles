extends Node
# ternary conditional operators and not clause

var first_names: Array = ["Aldric", "Elowen", "Cedric", "Seraphine", "Thalric", "Evelyne", "Darian", "Lysandra", "Caelan", "Isolde"]
var last_names: Array = ["Ravenwood", "Stormrider", "Blackthorne", "Windraven", "Ashford", "Hawke", "Ironhart", "Silvermane", "Nightshade", "Brightblade"]

@onready var name_label: Label = %Label

func _ready() -> void:
	pass #var experimental_feature = Flags.experimental_feature

func _on_button_pressed() -> void:
	name_label.text = generate()

func generate() -> String:
	return ""
