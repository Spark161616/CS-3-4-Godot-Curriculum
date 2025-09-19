extends Area2D

class_name pickup

@export var type: String
@export var sound: AudioStream
@export var label: String

@export var color: Color
@export var coin_value: int = 30
@export var auto_pickup: bool = true
@export var coin_type: String
#@export var coin_type: String = "silver"
#@export var coin_type: String = "copper"

@export var value: int = 10
func configure_pickup() -> bool:
	match coin_type:
		"gold":
			value= 30
			return true
		"silver":
			value = 20
			return true
		"copper":
			value = 10
			return true
		_:
			print("Unknown weapon type!")
			return false
func _ready():
	print("gold coin created - worth " + str(value) + "   sence")
	body_entered.connect(_on_body_entered)

func _process(delta: float) -> void:
	# Set the color of the coin
	$AnimatedSprite2D.material.set_shader_parameter("color", color)

func _on_body_entered(body):
	# Check if it's the player
	if body is Player:
		print("Player found gold coin! Sence is now "+str(Global.Sence))
		#if auto_pickup:
				#$AnimationPlayer.play("disappear")	
				#Elaborated in coin.gd
