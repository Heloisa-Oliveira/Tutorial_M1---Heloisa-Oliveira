extends Node2D

var numero
onready var lista_preenchida = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
onready var lista_vazia = []



func _on_Lista_preenchida_pressed():
	$resultado.text = String(lista_preenchida)



func _on_adicionar_valores_pressed():
	numero = $LineEdit.text
	lista_vazia.append(numero)
	
	

func _on_Lista_Vazia_pressed():
	$resultado.text = String(lista_vazia)



func _on_Limpar_lista_pressed():
	lista_vazia = []
	$resultado.text = String("")
