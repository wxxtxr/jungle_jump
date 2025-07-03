extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var level_num = str(GameState.current_level).pad_zeros(2)
	var path = "res://levels/level_%s.tscn" % level_num
	print(path)
	var level = load(path).instantiate()
	add_child(level)
