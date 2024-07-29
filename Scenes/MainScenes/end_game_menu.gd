extends Control

@onready var rematch_button = $Panel/VBoxContainer/RematchButton
@onready var switch_teams_button = $Panel/VBoxContainer/SwitchTeamsButton
@onready var quit_button = $Panel/VBoxContainer/QuitButton

func _ready():
	visible = false
	rematch_button.pressed.connect(_rematch)
	switch_teams_button.pressed.connect(_switch_teams)
	quit_button.pressed.connect(_quit)


func _rematch():
	get_tree().change_scene_to_file("res://Scenes/MainScenes/game.tscn")


func _switch_teams():
	get_tree().change_scene_to_file("res://Scenes/MainScenes/pre_game_screen.tscn")


func _quit():
	get_tree().change_scene_to_file("res://Scenes/MainScenes/title_screen.tscn")
