extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	Json.parseJson()
	pass

@onready var LABEL = $ColorRect/Label


func _process(delta):
	LABEL.text = PlayerState.NAME
	pass
	
