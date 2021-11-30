extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_ButtonPontos_pressed():
	get_tree().change_scene("res://Cenas/Menus/Pontuacao.tscn")


func _on_ButtonConfigurar_pressed():
	get_tree().change_scene("res://Cenas/Menus/Configuracao.tscn")



func _on_ButtonJogar_pressed():
	get_tree().change_scene("res://Cenas/Jogo/Jogo.tscn")
