vec3 a7ContrastFilter( vec3 color )
{
  if (a7contrast != 1.0)
    color = ( ( color - 0.5 ) * max( a7contrast, 0.0 ) ) + 0.5;
  return color;
}

vec3 a7BrightnessFilter( vec3 color )
{
  if (a7brightness != 0.0)
    color += a7brightness;
  return color;
}

vec3 a7GammaFilter( vec3 color )
{
  if (a7gamma != 1.0)
    color = pow( color, vec3( 1.0 / a7gamma ) );
  return color;
}

