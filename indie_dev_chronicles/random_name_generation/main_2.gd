extends Node

@export var names_definition: NamesDefinition
@onready var name_label: Label = %Label

func _on_button_pressed() -> void:
	name_label.text = generate()

func generate() -> String:
	var first_name = names_definition.first_names.random()
	var last_name = names_definition.last_names.random()

	return "{0} {1}".format([first_name, last_name])
