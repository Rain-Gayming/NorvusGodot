extends Node

@export_category("Menus")
@export var continueMenu : Control
@export var loadMenu : Control
@export var newGameMenu : Control
@export var settingsMenu : Control

func _ready():
	_CloseMenus();

func _ContinueButtonPressed():
	_CloseMenus();
	continueMenu.visible = true;

func _LoadButtonPressed():
	_CloseMenus();
	loadMenu.visible = true;

func _NewGameButtonPressed():
	_CloseMenus();
	newGameMenu.visible = true;

func _SettingsButtonPressed():
	_CloseMenus();
	settingsMenu.visible = true;

func _ExitButtonPressed():
	get_tree().quit();

func _CloseMenus():
	continueMenu.visible = false;
	loadMenu.visible = false;
	newGameMenu.visible = false;
	settingsMenu.visible = false;
