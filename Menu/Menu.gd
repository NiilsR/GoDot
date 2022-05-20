extends Control


func _ready():
	pass #$VBoxContainer/StartButton.grab_focus()

func _on_StartButton_pressed():
	get_tree().change_scene("res://Level1.tscn")


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Menu/Options.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
