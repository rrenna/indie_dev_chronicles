extends RefCounted
class_name ShuffleBag

var initial: Array
var bag: Array

func populate(array: Array) -> void:
	initial = array
	reshuffle()

func reshuffle():
	bag = initial.duplicate()
	bag.shuffle()

func random() -> Variant:
	if bag.is_empty():
		reshuffle()

	return bag.pop_front()
