extends Resource
class_name NamesDefinition_2

@export_multiline var first_name_values: String:
	set(value):
		first_names = ShuffleBag.new()
		var split_values = value.split(",")
		first_names.populate(split_values)
@export_multiline var last_names_values: String:
	set(value):
			last_names = ShuffleBag.new()
			var split_values = value.split(",")
			last_names.populate(split_values)
@export_multiline var middle_name_values: String:
	set(value):
			middle_names = ShuffleBag.new()
			var split_values = value.split(",")
			middle_names.populate(split_values)
var first_names: ShuffleBag
var last_names: ShuffleBag
var middle_names: ShuffleBag
@export var chance_of_middle_name: float = 0.25
