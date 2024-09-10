extends Node
# ternary conditional operators and not clause

@export var name_repository: NameRepository
@onready var name_label: Label = %Label

func _on_button_pressed() -> void:
	name_label.text = generate()

func generate() -> String:
	return name_repository.generate(NameRepository.Race.human)
