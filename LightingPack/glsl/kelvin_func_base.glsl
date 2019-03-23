vec3 a7ColorTemp()
{
  const float scale = 255.0;
  float temp = clamp(a7kelvin / 100.0, 10.0, 400.0);
  vec3 res;

  // red
  res.r = (temp < 66.0) ? 1.0 : clamp((351.976905668057 + 0.114206453784165 * (temp - 55.0) + -40.2536630933213 * log(temp - 55.0)) / scale, 0.0, 1.0);

  // green
  res.g = (temp < 66.0) ? clamp((-155.254855627092 + -0.445969504695791 * (temp - 2.0) + 104.492161993939 * log(temp - 2.0)) / scale, 0.0, 1.0) 
                        : clamp((325.449412571197 + 7.94345653666234E-02 * (temp - 50.0) + -28.0852963507957 * log(temp - 50.0)) / scale, 0.0, 1.0);

  // blue
  res.b = (temp >= 66.0) ? 1.0 
                         : (temp <= 19.0) ? 0.0 
                                          : clamp((-254.769351841209 + 0.827409606400739 * (temp - 10.0) + 115.679944010661 * log(temp - 10.0)) / scale, 0.0, 1.0);

  return res;
}

