extends Node2D

var teste = false #variável não utilizada
var valor = 0 #variável não utlizada 
var numero = 0 # o programa não reconhece o acento, por isso, devemos tirá-lo.
var lista = [] #faltou a declaração de que é uma variável 
var nome
var cont
var i

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #faltou um sinal de $ para se referir ao LineEdit
	nome = ($LineEdit.text) #variável "nome" não foi declarada e é ela que recebe o que foi escrito no LineEdit, não o contrário, lembrando de colocar os parênteses.


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #variável "numero" não pode ser referida usando uma letra maíscula
		lista.append(numero) #variável "numero" não pode ser referida usando uma letra maíscula
	$Label.text = String(numero) #a variável "numero" precisa ser transformada em uma string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	
	while(len(lista)):
		cont=0 #variável "cont" não declarada.
		i=0 #variável "i" não declarada.
		if(lista[i]%2==1):
			cont+=1
		lista.pop_back() # o loop continuaria infinitamente se não deletarmos os seus termos para, assim, a condição do while deixar de ser true.
	
	if(cont!=0): # se esse if continuasse no loop, iriam ser adicionados 10 "baldos" à string "nome".
		nome = nome+"baldo"
	
	$Label2.text = String(nome) #a variável "nome" precisa ser trasformada em string e retirada do loop.
