class_name Weapon

extends Node


@export_category("Visual & Effects")
@export var weaponName: String
@export var itemTexture: Texture2D
@export_multiline var description: String
@export var sound: AudioStream

@export_category("Characteristics")
@export var damage: float = 100.0
@export var attackSpeed: float = 10 # 10 is 1 hit per second
@export var isMelee: bool
@export var useTime: float = 1; # 0.1 part of second
@export_enum("Common", "Uncommon", "Rare", "Epic", "Legendary") var rare: int
@export var knockback: float
@export_enum("Slash", "Shoot", "Shaking") var animationType: int
@export var projectile: Projectile
@export var countOfProjectiles: int
@export var noMelle: bool
@export var autoReuse: bool
@export var accuracy: float
@export var only2Hands: bool

@onready var sprite = $Sprite2D


func _ready():
	sprite.texture = itemTexture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func attack():
	pass
