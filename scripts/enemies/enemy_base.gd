extends npc
class_name enemy_base
@onready var sprite: Sprite2D = $Sprite2D





func _ready() -> void:
	super._ready()
	
	
   
func _physics_process(delta: float) -> void:
	super._physics_process(delta)
	#print(position)
	pass
	

func _on_detection_radius_body_entered(body: Node2D) -> void:
	super._on_detection_radius_body_entered(body)
	if body is Player:
		is_hostile=true


func _on_detection_radius_body_exited(body: Node2D) -> void:
	super._on_detection_radius_body_exited(body)
	if body is Player:
		is_hostile=false
		
func _on_collision_with_player():
	print("collison")
	health -= 10
	#speed = 0
	#get_tree().create_timer(500).timeout
	#print("timer")
	#speed = 90
	#get_tree().create_timer(0.2).timeout
	#print("timer2")
	#speed = 100
	is_hostile = false
	get_tree().create_timer(0.2).timeout
	is_hostile = true
	


func _on_damage_radius_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
