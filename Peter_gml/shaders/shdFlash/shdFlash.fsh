//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


uniform float _alpha;
uniform float _red;
uniform float _green;
uniform float _blue;



void main()
{
		vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (color.a != 0.0)
	{
		gl_FragColor = vec4(_red, _green, _blue, _alpha);
	}  
}
