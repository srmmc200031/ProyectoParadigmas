extends Node
var test=1
var stringValue=""
func _play_animation(body):
#	if test>0:
#		Globals.camera.shake(100, 0.8, 100)
#	elif test<0:
#		Globals.camera.shake(300,0.08,300)
	$Triggers.disconnect("body_entered", self, "_play_animation")


#Se codean los eventos de cada una de las cajas
#*valores antiguos de prueba

func _on_Triggers_area_entered(area):
	$Triggers/Label.percent_visible=0
	$Triggers.connect("body_entered", self, "_play_animation")
	$AnimationPlayer.play("Texto1")
	stringValue=stringValue+"1"
	print (stringValue)
	

func _on_Triggers2_area_entered(area):
	$Triggers2/Label2.percent_visible=0
	$Triggers2.connect("body_entered", self, "_play_animation")
	$AnimationPlayer.play("Texto2")	

func _on_Triggers3_area_entered(area):
	$Triggers3/Label3.percent_visible=0
	$Triggers3.connect("body_entered", self, "_play_animation")
	$AnimationPlayer.play("Texto3")


func _on_Triggers4_area_entered(area):
	$Triggers4/Label4.percent_visible=0
	$Triggers4.connect("body_entered", self, "_play_animation")
	$AnimationPlayer.play("Texto4")


func _on_Triggers5_area_entered(area):
	$Triggers5/Label5.percent_visible=0
	$Triggers5.connect("body_entered", self, "_play_animation")
	$AnimationPlayer.play("Texto5")
	$CanvasModulate.visible=true
#	Globals.camera.shake(300,300,300)
	#test=test*-1
	


func _on_Ojama_area_entered(area):
	get_tree().change_scene("res://ending.tscn")
