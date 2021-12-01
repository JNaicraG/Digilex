extends Node2D

var PRE_PECA = preload("res://Cenas/Extras/Peca.tscn")
var PRE_BLOCO = preload("res://Cenas/Extras/BlocoResposta.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pChave:String #Palavra-Chave
var sPChave:String#Separado por sílaba para protótipo


func _ready():
	IniciarJogo()
#	print("palavra: ", pChave)
#	print("Sílaba inicial: ", sPChave)
#	#ControladorJogo.SepararSilabas(pChave)

func _process(delta):
	pass

func IniciarJogo():
	pChave = ControladorJogo.EscolherPalavraInicial()
	sPChave = ControladorJogo.EscolherSilabas()
	$"Palavra-Chave".text = pChave
	SepararSilaba()
	
func SepararSilaba():
	var s:String
	var id:int = 0
	for i in sPChave.length():
		if (sPChave[i] != '-') :
			s += sPChave[i]
		else:
			GerarPeca(s,id)
			GerarBloco(id)
			id += 1
			s =""
	GerarPeca(s,id)
	print(s)
	pass

func GerarBloco(id:int):
	var bloco = PRE_BLOCO.instance()
#	bloco.SetTexto(text)
	bloco.SetId(id)
	$HBoxContainer.add_child(bloco)
	var posX = rand_range(0,1024)
	#get_parent().
#	add_child(bloco)
	bloco.position = Vector2(posX,0)
#	print(str(bloco.position))
#	print(bloco.id)


func GerarPeca(text:String, id:int):
	var peca = PRE_PECA.instance()
	peca.SetTexto(text)
	peca.SetId(id)
	var posX = rand_range(0,512)
	var posY = rand_range(0,512)
	#get_parent().
	add_child(peca)
	peca.global_position = Vector2(posX,posY)
	print(str(peca.position))
	print(peca.id)
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


