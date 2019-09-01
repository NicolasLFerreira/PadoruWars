extends Control

func _on_back_to_menu_pressed():
	get_tree().change_scene("res://StartMenu.tscn")

func _on_replay_pressed():
	get_tree().change_scene("res://Jogo.tscn")

func _on_quit_from_final_pressed():
	get_tree().quit()