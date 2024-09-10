extends ShuffleBag
class_name PseudoShuffleBag

# A pseudo shuffle bag works like a shuffle bag but rather than reshuffling when emptied,
# the bag will reshuffle when less than a percentage (50% by default) of contents remains.
var threshold: float = 0.5

func random() -> Variant:
	var fraction = float(bag.size()) / float(initial.size())
	if fraction < threshold:
		reshuffle()

	return bag.pop_front()
