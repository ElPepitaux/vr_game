extends Control


@onready var time = $Timer
@onready var minutes = $Minute

var seconds = 60

# Called when the node enters the scene tree for the first time.
func _ready():
	time.start()
	minutes.text = str(seconds)
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	minutes.text = str(seconds)	
	pass


func _on_timer_timeout():
	seconds -= 1
	
	if seconds == -1:
		time.stop()
	pass # Replace with function body.
