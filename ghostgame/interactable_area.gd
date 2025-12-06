extends Area2D
@onready var _label: RichTextLabel = $label
@export var _stone:CharacterBody2D
var _is_interactable:bool


func _ready() -> void:
	_label.visible=false
	_is_interactable=false

func _on_body_entered(body: Node2D) -> void:
	if body.name=="mc":
		_label.visible=true
		_is_interactable=true
		
func _process(delta: float) -> void:
	if _is_interactable:
		if Input.is_action_just_pressed("E"):
			print("E is pressed")
			_stone.set_active()
		
	



func _on_body_exited(body: Node2D) -> void:
	_label.visible=false
	_is_interactable=false
