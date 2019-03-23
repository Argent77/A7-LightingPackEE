vec3 a7HSLFilter( vec3 color )
{
  if (a7hue != 0.0 || a7saturation != 1.0 || a7lightness != 1.0) {
    // rgb -> hsl
    vec3 hsl = a7RGBtoHSL(color);

    // adjusting hsl
    hsl.x += fract(a7hue);
    if (hsl.x < 0.0) hsl.x += 1.0;
    if (hsl.x > 1.0) hsl.x -= 1.0;
    hsl.yz = clamp(hsl.yz * vec2(a7saturation, a7lightness), 0.0, 1.0);

    // hsl -> rgb
    color = a7HSLtoRGB(hsl);
  }

  return color;
}

