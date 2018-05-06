uniform float timer;

vec4 Process(vec4 color)
{
	vec2 stripe1 = gl_TexCoord[0].st;
	// Get the 1st stripe
	stripe1.y -= timer * 0.35;
	stripe1.y = stripe1.y - floor(stripe1.y);
	vec4 stripe1Texel = getTexel(stripe1);
	return stripe1Texel * color;
}