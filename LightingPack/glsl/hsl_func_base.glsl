vec3 a7RGBtoHSL( in vec3 c )
{
  vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
  vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
  vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

  const float e = 1.0e-10;
  float d = q.x - min(q.w, q.y);
  vec3 res = vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d, q.x);
  float L = res.z - res.y * 0.5;
  float S = res.y / (1.0 - abs(L * 2.0 - 1.0) + e);
  return vec3(res.x, S, L);
}

vec3 a7HSLtoRGB( in vec3 c )
{
  vec3 rgb = clamp(abs(mod(c.x * 6.0 + vec3(0.0, 4.0, 2.0), 6.0) - 3.0) - 1.0, 0.0, 1.0);
  return c.z + c.y * (rgb - 0.5) * (1.0 - abs(2.0 * c.z - 1.0));
}

