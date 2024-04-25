extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioPrincipal.play()
	$Saida/CollisionShape2D.hide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_desafio_body_entered(body):
	if (body.name == Global.corpo1 and Global.controle1 == 0):
		get_tree().change_scene_to_file("res://Cenas/entrada_desafio_02.tscn")
		Global.controle1 = Global.controle1 + 1
		Global.corpo1 = "jaFoi"
		$AudioPrincipal.stop()
		
func _on_desafio_2_body_entered(body):
	if (body.name == Global.corpo2 and Global.controle2 == 0):
		get_tree().change_scene_to_file("res://Cenas/entrada_desafio_03.tscn")
		Global.controle2 = Global.controle2 + 1
		Global.corpo2 = "jaFoi"
		$AudioPrincipal.stop()

func _on_desafio_3_body_entered(body):
	if (body.name == Global.corpo3 and Global.controle3 == 0):
		get_tree().change_scene_to_file("res://Cenas/entrada_desafio_01.tscn")
		Global.controle3 = Global.controle3 + 1
		Global.corpo3 = "jaFoi"
		$AudioPrincipal.stop()


func _on_saida_body_entered(body):
	Global.controle = Global.controle1 + Global.controle2 + Global.controle3
	if (body.name == "platao" and Global.controle == 3):
		get_tree().change_scene_to_file('res://Cenas/fim.tscn')
		print("saida")
		$AudioPrincipal.stop()
		Global.controle = 0
		Global.controle1 = 0
		Global.controle2 = 0
		Global.controle3 = 0
		Global.corpo1 = "platao"
		Global.corpo2 = "platao"
		Global.corpo3 = "platao"
	
