extends CharacterBody2D
@onready var sprite_2d: Sprite2D = $Sprite2D

func set_active() -> void:
	sprite_2d.material.set_shader_parameter("active",true)


	
