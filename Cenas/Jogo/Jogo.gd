extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var displayText = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	displayText = ControladorJogo.palavras


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
