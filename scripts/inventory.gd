extends Node2D
class_name inventory

@export var my_inventory : Array[inventory_item]=[]
var current_item :int = 0
var maxsize = 5

func process (delta :float) -> void:
	if Input.is_action_just_pressed("inventory_up"):
		current_item -= 1
		if current_item < 0:
			current_item = 0
		print_inventory(current_item)
	if Input.is_action_just_pressed("inventory_down"):
		current_item+=1
		if current_item> my_inventory.size()-1:
			current_item = my_inventory.size()-1
		print_inventory(current_item)
		
func print_inventory(item : int):
	print("The current item is "+ my_inventory[current_item].name)
	print("It costs "+ str(my_inventory[current_item].cost))
	
func add_inventory(item : inventory_item):
	if my_inventory.size()<maxsize:
		my_inventory.append(item)
	else: print("our inventory is full, consider dropping an item or use one")
	pass
