extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id:int

# Called when the node enters the scene tree for the first time.
func _ready():
	print(id)
	pass # Replace with function body.

func SetTexto(var t:String):
	$KinematicBody2D/Button/Label.text = t

func SetId(var t:int):
	id = t

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
