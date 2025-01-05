extends Node2D

@onready var plate_stack_2: AudioStreamPlayer = $"../PlateStack2"

@onready var ref_plate: Sprite2D = $Plate
var plate_coord:= Vector2.ZERO
var plate_offset:= Vector2(0, -18)

func create_stack(count: int) -> void:
	for i in count:
		var new_plate: Sprite2D = ref_plate.duplicate()
		new_plate.texture = new_plate.possible_sprite[randi_range(0, 2)]
		new_plate.position = plate_coord
		new_plate.show()
		add_child(new_plate)
		plate_coord += plate_offset
		plate_stack_2.pitch_scale = randf_range(.9, 1)
		plate_stack_2.play()
		await get_tree().create_timer(2.0/count +.08).timeout
	
	$"../AnimationPlayer".play("staaaaammmmmp")
