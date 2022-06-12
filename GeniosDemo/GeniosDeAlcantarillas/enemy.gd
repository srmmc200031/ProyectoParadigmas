extends KinematicBody2D

var gravity:int=20
var speed:int=50
var velocity:Vector2=Vector2()
export var directionRight=1 #1 es hacia la derecha, -1 es izq aunq cualquier
#valor distitnto a 1 funciona

func _ready():
	if directionRight!=1:
		$malo.flip_h=true
	$floorchecker.position.x=$CollisionShape2D.shape.get_extents().x*directionRight

func _physics_process(_delta):
	if is_on_wall():
		directionRight=directionRight*-1
		$malo.flip_h=not $malo.flip_h
		$floorchecker.position.x=$CollisionShape2D.shape.get_extents().x*directionRight
	if $floorchecker.is_colliding()==false:
		directionRight=directionRight*-1
		$malo.flip_h=not $malo.flip_h
		$floorchecker.position.x=$CollisionShape2D.shape.get_extents().x*directionRight
	velocity.y+= gravity
	velocity.x=speed*directionRight
	
	velocity=move_and_slide(velocity, Vector2.UP)
