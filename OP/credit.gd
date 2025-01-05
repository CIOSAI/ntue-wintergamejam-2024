extends Node2D

#@export var title_scene: PackedScene
#
#func _on_back_pressed() -> void:
	#get_tree().change_scene_to_packed(title_scene)

@export_file("*.tscn") var title_scene

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file(title_scene)
