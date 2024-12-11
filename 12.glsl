//
// In this example, the sphere's origin is (0, 0, 0).
//
// Change it so that the sphere resets directly on top of
// (0, 0, 0) based on the radius.
//
float getDistanceFromPoint(vec3 point) {
  float radius = (sin(iGlobalTime * 0.1) * 0.5 + 0.5) * 0.25;
  point.y -= radius;
  return length(point) - radius;
}

