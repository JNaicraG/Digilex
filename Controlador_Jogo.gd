extends Node







###Modificar código abaixo para não pegar o texto DROPPADO no arquivo, mas sim o caminho que queremos

var filePath:String #caminho do arquivo
var loadedFile:File = File.new() #Segura a informação vindo do arquivo
var palavras:String

func _ready():
	#Pegar sinal do evento de Arquivo (File) que fica na scene tree do godot
	#Sinal para quando files são dropados
	#Conectar sinal
	#pegar caminho().conectar sinal.(nome do sinal", o proprio documento (this), a função que conectaremos)
	get_tree().connect("files_dropped", self, "_getDroppedFilesPath")
	#"files_dropped retorna o caminho, arquivos em array (então a função tem que receber argumento em array)
	#também retorna qual "tela" (screen) o aplicativo está rodando
	pass
	
#Função para pegar o caminho do arquivo que trouxermos à aplicação
func _getDroppedFilesPath(files:PoolStringArray, screen:int) -> void: #você pode ter vários arquivos dropados ao mesmo tempo, armazenados no array
	#como só usando um arquivo, usar o primeiro arquivo
	filePath = files[0] #carrega o primeiro arquivo e pega caminho
	_setText()	
	
	
#Função para pegarmos o texto
func _setText()->void:
	loadedFile.open(filePath,_File.READ) #Abre o arquivo encontrado
	palavras = loadedFile.get_as_text() #pega o texto 
	loadedFile.close() #Fecha o arquivo
	


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

