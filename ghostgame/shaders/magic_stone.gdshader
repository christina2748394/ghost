shader_type canvas_item;
uniform bool active=false;


void fragment() {
	vec4 intput_color=texture(TEXTURE,UV);
	vec4 white_color=vec4(1.0,1.0,1.0,intput_color.a);
	vec4 new_color=intput_color;
	if (active==true){
		new_color=white_color;}
	COLOR=new_color;
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
