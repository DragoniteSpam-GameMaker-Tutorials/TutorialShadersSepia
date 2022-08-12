//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_SepiaAmount;

void main()
{
    vec4 original_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    mat3 sepia_matrix = mat3(
        0.393, 0.769, 0.189,
        0.349, 0.686, 0.168,
        0.272, 0.534, 0.131
    );
    
    vec3 sepia_color = original_color.rgb * sepia_matrix;
    
    gl_FragColor.rgb = mix(original_color.rgb, sepia_color, u_SepiaAmount);
    gl_FragColor.a = original_color.a;
}