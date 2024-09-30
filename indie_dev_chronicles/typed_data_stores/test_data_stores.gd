extends GutTest

var very_large_number = 100_000_000
var very_large_typed_number: int = 100_000_000

func test_addtion() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = 0
	for i in range(very_large_number):
		x += 1
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_addtion: Execution time: %.6f seconds" % execution_time)

func test_typed_addition() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: int = 0
	for i in range(very_large_typed_number):
		x += 1
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_addition: Execution time: %.6f seconds" % execution_time)
	
func test_multiplication() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = 5
	for i in range(very_large_number):
		x *= x
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_multiplication: Execution time: %.6f seconds" % execution_time)
		
func test_typed_multiplication() -> void:
	var start_time = Time.get_ticks_usec()
	
	# Call your method here
	var x: int = 5
	for i in range(very_large_typed_number):
		x *= x
		
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_multiplication: Execution time: %.6f seconds" % execution_time)
	
func test_vector_addition() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = Vector2(3,3)
	for i in range(very_large_number):
		x += x
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_vector_addition: Execution time: %.6f seconds" % execution_time)
	
func test_typed_vector_addition() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: Vector2 = Vector2(3,3)
	for i in range(very_large_typed_number):
		x += x
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_vector_addition: Execution time: %.6f seconds" % execution_time)

func test_vector_multiplication() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = Vector2(3,3)
	for i in range(very_large_number):
		x *= x
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_vector_multiplication: Execution time: %.6f seconds" % execution_time)
	
func test_typed_vector_multiplication() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: Vector2 = Vector2(3,3)
	for i in range(very_large_typed_number):
		x *= x
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_vector_multiplication: Execution time: %.6f seconds" % execution_time)

func test_vector_distance() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = Vector2(3,3)
	var x2 = Vector2(8,8)
	for i in range(very_large_number):
		x.distance_to(x2)
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_vector_distance: Execution time: %.6f seconds" % execution_time)


func test_typed_vector_distance() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: Vector2 = Vector2(3,3)
	var x2: Vector2 = Vector2(8,8)
	for i in range(very_large_typed_number):
		x.distance_to(x2)
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_vector_distance: Execution time: %.6f seconds" % execution_time)

# arrays

func test_array() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = []
	for i in range(very_large_typed_number):
		x.append(i)
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_array: Execution time: %.6f seconds" % execution_time)


func test_typed_array() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: Array[int] = []
	for i in range(very_large_typed_number):
		x.append(i)
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_typed_array: Execution time: %.6f seconds" % execution_time)
	
# dictionaries

func test_dictionaries() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x = {}
	for i in range(very_large_number):
		x[i] = "{0}".format([i])
		var y = x[i]
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_array: Execution time: %.6f seconds" % execution_time)

func test_typed_dictionaries() -> void:
	var start_time = Time.get_ticks_usec()
	
	var x: Dictionary[int, String] = {}
	for i in range(very_large_typed_number):
		x[i] = "{0}".format([i])
		var y = x[i]
	
	var end_time = Time.get_ticks_usec()
	var execution_time = (end_time - start_time) / 1_000_000.0
	print("test_array: Execution time: %.6f seconds" % execution_time)
