extends Node2D

@export var game_scene: PackedScene
@export var credit_scene: PackedScene

func _ready() -> void:
	for button: Button in [%Start, %Credit, %Exit]:
		button.pressed.connect(button_pressed.bind(button.name))

func button_pressed(button_name: StringName) -> void:
	match button_name:
		&"Start":
			get_tree().change_scene_to_packed(game_scene)
		&"Credit":
			get_tree().change_scene_to_packed(credit_scene)
		&"Exit":
			get_tree().quit()
