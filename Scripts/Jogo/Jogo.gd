extends Node2D

const PRE_PECA = preload("res://Cenas/Extras/Peca.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pChave:String #Palavra-Chave
var sPChave:String#Separado por sílaba para protótipo


func _ready():
	IniciarJogo()
	var richtext = RichTextLabel.new()
	richtext.text = "TESTE aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	add_child(richtext) 
	richtext.set_position(Vector2(10,10))
	print(richtext.text)
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
			print(s)
			++id
			s =""
	GerarPeca(s,id)
	print(s)
	pass



func GerarPeca(text:String, id:int):
	var peca = PRE_PECA.instance()
	peca.SetTexto(text)
	peca.SetId(id)
	var posX = rand_range(0,64)
	var posY = rand_range(0,256)
	get_parent().add_child(peca)
	peca.position = Vector2(0,0)

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


