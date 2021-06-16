shader_type canvas_item;
render_mode unshaded;
 
uniform float intensity;

uniform bool x;
uniform float r_horizontal;
uniform float g_horizontal;
uniform float b_horizontal;

uniform bool y;
uniform float r_vertical;
uniform float g_vertical;
uniform float b_vertical;

void fragment()
{
	float texture_alpha = texture(TEXTURE, UV).a;

	if (texture_alpha > 0.0)
	{
		if (x == true)
		{
			COLOR = vec4(
				UV.x * r_horizontal * intensity,
				UV.x * g_horizontal * intensity,
				UV.x * b_horizontal * intensity,
				texture_alpha
			);
		}
		if (y == true)
		{
			COLOR = vec4(
				UV.y * r_vertical * intensity,
				UV.y * g_vertical * intensity,
				UV.y * b_vertical * intensity,
				texture_alpha
			);
		}
	}
	else
	{ 
		COLOR = texture(TEXTURE, UV);
	}
}