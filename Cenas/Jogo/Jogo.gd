extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pChave:String #Palavra-Chave
var sPChave:String#Separado por sílaba para protótipo
func _ready():
	pChave = ControladorJogo.EscolherPalavraInicial()
	sPChave = ControladorJogo.EscolherSilabas()
	print("palavra: ", pChave)
	print("Sílaba inicial: ", sPChave)
	#ControladorJogo.SepararSilabas(pChave)

func _process(delta):
	pass

func IniciarJogo():
	$"Palavra-Chave".text = pChave
	var peca = $Peca
	var label = $Peca/Label
	for i in range(pChave.length()):
		if(pChave[i] != '-'):
			label.text += pChave[i]
		#els
			
		
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

