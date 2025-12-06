extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction: Vector2=Vector2.ZERO
@export var speed:int =100

func _process(_delta: float) -> void:
	
	#get movement input
	direction=Input.get_vector("left","right","up","down")
	
	#play attack, running, and idle animation
	var attacking=Input.is_action_pressed("K")
	
	if direction==Vector2.ZERO:
		if attacking:
			animated_sprite_2d.play("attack")
		else:
			animated_sprite_2d.play("default")
	else:
		if attacking:
			animated_sprite_2d.play("attack")
		else:
			animated_sprite_2d.play("running")
		

func _physics_process(_delta: float) -> void:
	velocity=direction*speed
	
	#flip directions 
	if velocity.x<0:
		animated_sprite_2d.flip_h=true
	if velocity.x>0:
		animated_sprite_2d.flip_h=false
	move_and_slide()
	
func die()->void:
	animated_sprite_2d.play("die")
	
