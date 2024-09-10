extends Node
# ternary conditional operators and not clause

@export var name_repository: NameRepository_2
@onready var name_label: Label = %Label

func _on_button_pressed() -> void:
	name_label.text = generate()

func generate() -> String:
	return name_repository.generate(NameRepository_2.Race.human)
