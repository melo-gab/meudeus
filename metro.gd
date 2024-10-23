extends Node2D

@onready var mudar_cena := $"timer mudar cena" as Timer
@onready var proxima_estacao := $"timer proxima estacao" as Timer

func _ready() -> void:
	$tvzinha1.play()
	$tvzinha2.play()
	mudar_cena.start()
	proxima_estacao.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://conceicao.tscn")
	print("próxima estação: conceição")
	

func _on_timer_proxima_estacao_timeout() -> void:

	$"porta 1".play("abrindo")
	$"porta 2".play("abrindo")
	$"porta 3".play("abrindo")
	$"porta 4".play("abrindo")

	
