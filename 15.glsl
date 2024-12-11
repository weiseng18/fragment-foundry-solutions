//
// Try and recreate the solution by eyeballing it :)
//
float getDistanceFromPoint(vec3 point) {
  float period = 0.4;
  float radius = 0.1;
  
  point.xz = mod(point.xz - period/2.0, period) - period/2.0;
  float sdf = length(point) - radius;
  return sdf;
}
