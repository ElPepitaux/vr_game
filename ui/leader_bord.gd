extends Control

var scores;
@onready var RICHTEXTLABEL = $ColorRect/RichTextLabel
# Called when the node enters the scene tree for the first time.
func _ready():
	scores = Json.parseJson()
	var string = ""
	for score in scores:
		string += score.name + " " + str(score.value) + "\n"
	RICHTEXTLABEL.text = string
	pass 

func _process(delta):
	pass
	
