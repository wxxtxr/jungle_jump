extends Area2D

signal picked_up

var textures = {
	"cherry": "res://assets/sprites/cherry.png",
	"gem": "res://assets/sprites/gem.png"
}

func init(type, _position):
	$Sprite2D.texture = load(textures[type])
	position = _position



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	picked_up.emit()
	queue_free()
