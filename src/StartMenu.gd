extends Control

func _on_Quit_pressed():
	get_tree().quit()

func _on_StartGame_pressed():
	get_tree().change_scene("res://Jogo.tscn")