extends Resource
class_name NameRepository_2

enum Race {
	human, dwarf
}

@export var human_names: NamesDefinition_2
@export var dwarf_names: NamesDefinition_2

func generate(race: Race) -> String:

	var names: NamesDefinition_2

	match race:
		Race.human:
			names = human_names
		Race.dwarf:
			names = dwarf_names

	var first_name = names.first_names.random()
	var last_name = names.last_names.random()

	var middle_name
	if randf() < names.chance_of_middle_name:
		middle_name = names.middle_names.random()
	else:
		middle_name = ""

	return "{0} {1} x{2}".format([first_name, middle_name, last_name])
