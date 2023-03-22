extends Control


func _process(delta):
	#Status da quantidade de quadros coletados
	$CanvasLayer/Label.text = "Quadros: " + str(Global.quadros)
