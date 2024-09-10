extends Resource
class_name NameRepository

enum Race {
	human, dwarf
}

@export var human_names: NamesDefinition
@export var dwarf_names: NamesDefinition

func generate(race: Race) -> String:

	var names: NamesDefinition

	match race:
		Race.human:
			names = human_names
		Race.dwarf:
			names = dwarf_names

	var first_name = names.first_names.random()
	var last_name = names.last_names.random()

	return "{0} {1}".format([first_name, last_name])
