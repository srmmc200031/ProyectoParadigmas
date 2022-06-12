extends Node2D

func _ready():
	var new_dialog = Dialogic.start('ending')
	add_child(new_dialog)
	new_dialog.connect('timeline_end', self, 'after_dialog')
	
func after_dialog(timeline_name):
	print('ya puedes cerrar el juego')
	get_tree().quit()
pass
