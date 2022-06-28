extends Control

func _ready():
	#se hace visible el mouse y, dependiendo de si la respuesta es correcta
	#o no, se estructura el menu
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if Globals.sucess==false:
		$TextureButton1.visible=false
		$Sprite/Label.text=Globals.text
	else:
		$TextureButton1.visible=true
		$Sprite/Label.text=Globals.text
	transition()

func transition():
	$AnimationPlayer.play("fade")

func parra():
	$AnimationPlayer.play("Parrallax")

func transgame():
	$AnimationPlayer.play("fadeblack")
	
func transmenu():
	$AnimationPlayer.play("fadeblack2")

func transexit():
	$AnimationPlayer.play("fadeblackexit")

func creditosabierto():
	$AnimationPlayer.play("FadeCreditos")
	
#Se codea la transisión al pulsar los botones volver a intentar o
#volver al menu

func _on_TextureButton1_pressed():
	$click.play()
	
	transgame()

func _on_TextureButton2_pressed(): 
	$click.play()
	
	transmenu()

#Se codifica el cambio de escena, sea de vuelta al menu o al area de juego
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fadeblack":
		get_tree().change_scene("res://MainScene.tscn")
	elif anim_name == "fadeblack2":
		get_tree().change_scene("res://Menu.tscn")
	elif anim_name == "fadeblackexit":
		get_tree().quit()
	elif anim_name == "fade":
		parra()
	elif anim_name == "FadeCreditos":
		parra()
	pass # Replace with function body.

#Se codifican los sonidos de los cuadros de opciones

func _on_TextureButton1_mouse_entered():
	$cursor.play()
	pass # Replace with function body.

func _on_TextureButton2_mouse_entered():
	$cursor.play()
	pass # Replace with function body.
