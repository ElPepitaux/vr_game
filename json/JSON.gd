extends Node

var file_path = "res://json/score.json"

func custom_array_sort(a, b):
	return a.value > b.value


func parseJson():
	var data_file = FileAccess.open(file_path, FileAccess.READ)
	var json_string = JSON.parse_string(data_file.get_as_text())
	var json_sort = [];
	for j in json_string:
			json_sort.append(j)
	json_sort.sort_custom(custom_array_sort)
	return json_sort

func writeJson(data):
	var json_string = JSON.stringify(data, "\t")
	var file = FileAccess.open(file_path, FileAccess.READ_WRITE)
	file.store_line(json_string)
	
