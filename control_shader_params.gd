extends Control

var term1_x = 1.;
var term1_y = 1.;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



	

func _on_spin_box_value_changed(value):
	print("spin box 1 changed")
	term1_x = value
	RenderingServer.global_shader_parameter_set("term1", Vector2(term1_x, term1_y));


func _on_spin_box_2_value_changed(value):
	print("spin box 2 changed")
	term1_y = value
	RenderingServer.global_shader_parameter_set("term1", Vector2(term1_x, term1_y));




func _on_spin_box_ready():
	RenderingServer.global_shader_parameter_set("term1", Vector2(term1_x, term1_y));
	pass # Replace with function body.
