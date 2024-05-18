extends CharacterBody2D

@export_category("Movement")

@export var speed = 130.0
var axis = Vector2.ZERO

@export_category("Textures")
@export var bodyTexture: Texture2D
@export var headTexture: Texture2D

@onready var body = $Body
@onready var head = $Head


@onready var weapon = $BasicSword




func _ready():
	body.texture = bodyTexture
	head.texture = headTexture

func _physics_process(delta):
	axis.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	axis.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	axis = axis.normalized() * speed
	velocity = axis
	move_and_slide()
	
func _process(delta):
	weapon.look_at(get_global_mouse_position())


