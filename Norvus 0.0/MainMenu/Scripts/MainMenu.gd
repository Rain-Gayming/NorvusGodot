extends Node

@export_category("Menus")
@export var continueMenu : Control
@export var loadMenu : Control
@export var newGameMenu : Control
@export var settingsMenu : Control

@export_category("Settings Menu")
@export var settingsTabs : TabContainer

enum mainMenuTypes{
	_continue,
	_load,
	_newGame,
	_settings
}

func _ready():
	_CloseMenus()

func _ContinueButtonPressed():
	_OpenMenu(mainMenuTypes._continue)

func _LoadButtonPressed():
	_OpenMenu(mainMenuTypes._load)

func _NewGameButtonPressed():
	_OpenMenu(mainMenuTypes._newGame)

func _SettingsButtonPressed():
	_OpenMenu(mainMenuTypes._settings)

func _ExitButtonPressed():
	get_tree().quit()

func _CloseMenus():
	continueMenu.visible = false
	loadMenu.visible = false
	newGameMenu.visible = false
	settingsMenu.visible = false

func _OpenMenu(menu : mainMenuTypes):
	_CloseMenus()
	if menu == mainMenuTypes._continue:
		continueMenu.visible = true
	elif menu == mainMenuTypes._load:
		loadMenu.visible = true
	elif menu == mainMenuTypes._newGame:
		newGameMenu.visible = true
	elif menu == mainMenuTypes._settings:
		settingsMenu.visible = true

func _OnSettingsTabClicked(tab):
	if(tab == 4):
		settingsTabs.current_tab = 0;
		_CloseMenus();
