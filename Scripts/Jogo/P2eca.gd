extends KinematicBody2D

var mousePos
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var minSpeed = 50
var maxSpeed = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
#	Mover()
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func Mover():
	#var speed = 5
	var direction = get_global_mouse_position() - position
	var normalizedDirection = direction.normalized()
	var directionDistance = direction.length()
	move_and_slide(normalizedDirection * max(minSpeed,min(maxSpeed,directionDistance)))
	

func _on_Button_pressed():
	Mover()
	pass # Replace with function body.


func _on_Button_toggled(button_pressed):
	Mover()
	pass # Replace with function body.
