extends CanvasLayer

func update_spear_type(type):
	$CurrentSpear.frame = type

func _on_naia_update_spear_type(spear_type):
	update_spear_type(spear_type)

func _ready():
	update_spear_type(0)


func  dano(a):
	self.get_parent().get_parent().danos()
	$Life.apply_damage(a)
