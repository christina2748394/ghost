extends CharacterBody2D

@export var target_path:NodePath
@export var follow_distance:float=40
@export var follow_speed: float=120
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var target:Node2D
var direction

func _ready() -> void:
	target=get_node(target_path)
	

	
func _physics_process(delta: float) -> void:
	if not target:
		return
		
	#get dirextion to player
	var to_target=target.global_position-global_position
	direction=to_target.normalized()
	
	#flip sprite left and right 
	if direction.x!=0:
		animated_sprite_2d.flip_h=direction.x<0
	
	#only move if we are too far from the player
	if to_target.length()>follow_distance:
		if to_target.length()>follow_distance+50:
			animated_sprite_2d.play("running")
			follow_speed=100
		else:
			animated_sprite_2d.play("walking")
			follow_speed=75
	else:
		follow_speed=0
		animated_sprite_2d.play("default")
	velocity=direction*follow_speed
	move_and_slide()
		

	
		
		
	
