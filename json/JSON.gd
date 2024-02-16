extends Node

var file_path = "res://json/score.json"

func parseJson():
	var data_file = FileAccess.open(file_path, FileAccess.READ)
	var json_string = JSON.parse_string(data_file.get_as_text())
	print(json_string)
