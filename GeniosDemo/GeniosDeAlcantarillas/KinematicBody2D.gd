extends KinematicBody2D
signal hit 
export var speed = 250
var screen_size 
var test:int=1
func _ready():
	  screen_size = get_viewport_rect().size

var velocity = Vector2.ZERO
func _move_to_mouse(delta):
	var direction = get_global_mouse_position() - position
	position.x += 0
	position.y += 0
	move_and_collide(direction)
	if get_global_mouse_position() > position:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false 
func _process(delta):
	print(position)
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	_move_to_mouse(delta)
