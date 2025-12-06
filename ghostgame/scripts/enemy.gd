extends CharacterBody2D
@export var _game_controllor:Node2D
@export var _attack_point=10
@export var speed=500
@export var target_path:NodePath
@export var start_follow_distance=40
@export var follow_speed: float=120



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name=="mc":
		_game_controllor.attacked_by_enemy(_attack_point)

	
		
