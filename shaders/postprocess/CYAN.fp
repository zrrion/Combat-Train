void main()
{
	vec3 colour = texture(InputTexture, TexCoord).rgb;
	vec3 cyan = vec3(0.0, 1.0, 1.0);
	vec3 rainbow[5] = {	/*vec3(0.93, 0.75, 0.60),*/
						vec3(1.00, 0.59, 0.23),
						vec3(0.97, 0.94, 0.30),
						vec3(0.75, 0.89, 0.30),
						vec3(0.72, 0.82, 0.93),
						vec3(0.92, 0.51, 0.90) };
	if (colour == cyan)	
		FragColor = vec4(rainbow[timer], 0.0);
	else
		FragColor = vec4(colour, 1.0);
}
