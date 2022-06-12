extends Control

func _ready():
	transition()

func transition():
	$AnimationPlayer.play("fade")

func parra():
	$AnimationPlayer.play("Parrallax")

func transgame():
	$AnimationPlayer.play("fadeblack")

func transexit():
	$AnimationPlayer.play("fadeblackexit")

func creditosabierto():
	$AnimationPlayer.play("FadeCreditos")
	
func _on_TextureButton2_pressed(): #Start
	$click.play()
	transgame()


func _on_TextureButton_pressed(): #Credits
	$click.play()
	creditosabierto()
#	parra()
	get_node("Creditos").visible = true
	 # Replace with function body.


func _on_TextureButton3_pressed(): #Quit
	$click.play()
	transexit()
	pass # Replace with function body.


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fadeblack":
		get_tree().change_scene("res://MainScene.tscn")
	elif anim_name == "fadeblackexit":
		get_tree().quit()
	elif anim_name == "fade":
		parra()
	elif anim_name == "FadeCreditos":
		parra()
	pass # Replace with function body.


func _on_CerrarCreditos_pressed():
	$click.play()
	get_node("Creditos").visible = false
	pass # Replace with function body.


func _on_TextureButton2_mouse_entered():
	$cursor.play()
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	$cursor.play()
	pass # Replace with function body.


func _on_TextureButton3_mouse_entered():
	$cursor.play()
	pass # Replace with function body.


func _on_CerrarCreditos_mouse_entered():
	$cursor.play()
	pass # Replace with function body.
