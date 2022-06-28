extends Node2D
var test:bool=false
var a:int=0
var rta:String=""
var clear:String=""

#Se codifican las interacciones de los bloques cuando son golpeados
func _on_Block1_area_entered(area):
	rta=rta+$Block1/number.text
	$answer.text=rta

func _on_Block2_area_entered(area):
	rta=rta+$Block2/number.text
	$answer.text=rta

func _on_Block3_area_entered(area):
	rta=rta+$Block3/number.text
	$answer.text=rta

func _on_Block4_area_entered(area):
	rta=rta+$Block4/number.text
	$answer.text=rta

func _on_Block5_area_entered(area):
	rta=rta+$Block5/number.text
	$answer.text=rta

func _on_Block6_area_entered(area):
	rta=rta+$Block6/number.text
	$answer.text=rta

#Se crera la verificación de la respuesta, en base a esta se envia al menu
#post-partida
func _on_Area2D_area_entered(area):
	if (rta as int)==Globals.answr:
		Globals.text="Correcto"
		Globals.sucess=true
		get_tree().change_scene("res://Confirmation.tscn")
	else:
		Globals.text="Incorrecto"
		Globals.sucess=true
		get_tree().change_scene("res://Confirmation.tscn")
