extends CharacterBody2D

class_name  npc

@export var dialogue:Array[String] = []
@export var inventory:Array[String] = []
@export var speed:int = 100
@export var health:int = 100
#@export var type:
@export var is_hostile:bool = false
#@export drop_item = # path to tscn
@export var drop_rate:float = 1.0
#@export state 
@export var move_points:Array[Vector2] = []
@export var damage:int =1
@export var dead:bool = false
