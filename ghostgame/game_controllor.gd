extends Node2D
@export var _player_health=100
@export var _healthUI:RichTextLabel
@export var player:CharacterBody2D


func _process(delta: float) -> void:
	if _player_health==0:
		print('die')
		player.die()
		get_tree().change_scene_to_file("res://scenes/end_page.tscn")
	
	
func attacked_by_enemy(_hit_attack_point:int)->void:
	_player_health-=_hit_attack_point
	_healthUI.text=str(_player_health)
	
