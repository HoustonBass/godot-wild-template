shader_type canvas_item;

uniform vec2 fragment_number = vec2(20, 20);
uniform float dissolve_state : hint_range(-1, 1) = 1;

void fragment() {
	vec2 pixelFracct = fract(UV * fragment_number);
	// COLOR.rgb = vec3(pixelFracct, 0);
	float pixelDist = distance(pixelFracct, vec2(0.5, 0.5));
	COLOR = texture(TEXTURE, UV);  // vec3(pixelDist, 0,0);
	COLOR.a *= step(pixelDist, dissolve_state + UV.x);
}
