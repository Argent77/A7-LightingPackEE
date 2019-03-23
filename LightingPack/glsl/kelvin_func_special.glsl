vec3 a7KelvinFilter( vec3 color )
{
  if (a7kelvin > 0.0) {
    // storing original luminance for later
    float lum = (max(max(color.r, color.g), color.b) + min(min(color.r, color.g), color.b)) / 2.0;

    // adjusting color temperature (re-using luminance from original hsl value to preserve luminance)
    color = a7HSLtoRGB(vec3(a7RGBtoHSL(color * a7ColorTemp()).xy, lum));
  }

  return color;
}

