extends CenterContainer
class_name ColorCard

@onready var rect: ColorRect = $ColorRect
@onready var label: Label = $Label

func set_color(color: Color) -> void:
  if color == null: return
  rect.color = color

func set_color_hex(hex: String) -> void:
  set_color(Color(hex))

func set_text(msg: String) -> void:
  if msg == null: return
  label.text = msg

func set_card_size(width: int, height: int) -> void:
  var size: Vector2 = Vector2(width, height)
#  minimum_size = size
  rect.minimum_size = size
