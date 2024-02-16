extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

@onready var LABEL = $ColorRect/Label


func _process(delta):
	print(PlayerState.NAME)
	LABEL.text = PlayerState.NAME
	pass
