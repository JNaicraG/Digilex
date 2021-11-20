extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pChave:String #Palavra-Chave

func _ready():
	pChave = ControladorJogo.EscolherPalavraInicial()
	print("palavra: ", pChave)

func _process(delta):
	if Input.is_action_just_pressed("Teste"):
		pChave = ControladorJogo.EscolherNovaPalavra(pChave)
		print("Palavra Nova: ", pChave)
	pass

#
#func _ready():
#	file.open(filePath,_File.READ)
#	conteudo = file.get_as_text()
#	file.close()
#	var label = $Label
#	label.text = conteudo
#	print(conteudo)
#
#func _process(delta):
#	print("aaaaaaaaa")
#	if (conteudo!= null):
#		print("NÃO É NULL")
#		for s in conteudo:
#			print(s)

