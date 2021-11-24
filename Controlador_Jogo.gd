extends Node


#var filePath = "res://Palavras_em_br-utf8.txt"
var filePath = "res://Texto/Palavras_em_br-utf8.txt"
var palavras:PoolStringArray
enum nivel  {
	facil
	medio
	dificil
}


func _ready():
	Iniciar()
	
	
	
func Iniciar():
	palavras.append_array(Load_File())
	
	
func Load_File():
	var file = File.new()
	var content:PoolStringArray #fazer verificação depois
	file.open(filePath, File.READ)
	while !file.eof_reached():
		content.append(file.get_line())
	#var content = file.get_as_text()
	file.close()
	return content


func EscolherPalavraInicial(): #Palavra
	return palavras[randi() % palavras.size()]
	#var pChave = ControladorJogo.palavras[rand_range(0,ControladorJogo.palavras.size())]
	
	
func EscolherNovaPalavra(var p:String):#Palavra e UltimaPalavra
	var uP = p
	p = palavras[randi() % palavras.size()]
	if p == uP:
		EscolherNovaPalavra(p)
	else:
		return p
	
###Modificar código abaixo para não pegar o texto DROPPADO no arquivo, mas sim o caminho que queremos


######Tentativa antiga######

#onready var file = "res://Cenas/Texto/Palavras_em_br-utf8.txt"
#var palavras =[]
#
## Declare member variables here. Examples:
## var a = 2
## var b = "text"
#
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass
#
#
#func StartPalavras() -> void:
#	load_file()
#
#
#func load_file() -> void:
#	var f = File.new()
#	var index = 1
#	#var line =[]
#	f.open(file, _File.READ)
#	while !f.eof_reached():
#		print("Linha", i)
#		palavras += f.get_line()
#		#palavras.append(f.get_line())
#		f.close()
#		index++
#	return 
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
#
#func Print() -> void:
#		print ("apertou Espaço")
#		for s in palavras:
#			print(s)
##	pass'

