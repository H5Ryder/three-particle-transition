
varying vec3 vColor;

void main()
{

    vec2 uv = gl_PointCoord;
    float distanceToCenter = length(uv - 0.5);
    float alpha = 0.05 / distanceToCenter - 0.1;
  //  float color = 1.0 - distance(gl_Position, vec(0.5));
  //  color = smoothstep(0.2, 0.4, color);

    gl_FragColor = vec4(vColor, alpha);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}