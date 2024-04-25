extends Node2D



func _ready():
	var StartButton = $Button
	$AudioInicial.play()

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Cenas/menu_regras.tscn")
	

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Cenas/caverna_inicial.tscn")
	$AudioInicial.stop()
