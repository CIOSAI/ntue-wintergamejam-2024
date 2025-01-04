extends Line2D

@export_node_path("Line2D") var direct
@export_node_path("Line2D") var left
var direct_road
var left_road

func _ready():
	direct_road = get_node(direct)
	if left:
		left_road = get_node(left)
