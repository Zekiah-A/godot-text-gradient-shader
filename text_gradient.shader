shader_type canvas_item;
render_mode unshaded;
 
uniform float r;
uniform float g;
uniform float b;
uniform float x;
uniform float y;

void fragment()
{
	float texture_alpha = texture(TEXTURE, UV).a;

	if (texture_alpha > 0.0)
	{
		COLOR = vec4(
				(UV.y * y) + (UV.x * x) * r,
				(UV.y * y) + (UV.x * x) * g,
				(UV.y * y) + (UV.x * x) * b,
				texture_alpha
		);
	}
	else
	{ 
		COLOR = texture(TEXTURE, UV);
	}
}