//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_GrayscaleAmount;

void main()
{
    vec4 original_color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    float luma = dot(original_color.rgb, vec3(0.299, 0.587, 0.114));
    
    vec4 grayscale_color = vec4(luma, luma, luma, original_color.a);
    
    gl_FragColor = mix(original_color, grayscale_color, u_GrayscaleAmount);
}
