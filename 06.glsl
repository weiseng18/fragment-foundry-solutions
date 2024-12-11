uniform vec2 iResolution;
uniform float iGlobalTime;

//
// Let's make a distance function!
//
// We'll start with a circle. Its center should be at
// `point` == (0, 0), and its `radius` should match the value
// passed into `distanceFromCircle`.
//
float distanceFromCircle(vec2 point, float radius) {
  return length(point) - radius;
}

void main() {
  vec2 uv = 2.0 * gl_FragCoord.xy / iResolution.xy - 1.0;
  float radius = (sin(iGlobalTime * 0.25) * 0.5 + 0.5) * 0.5 + 0.3;
  float dist = distanceFromCircle(uv, radius);

  // draw_distance is a little utility we're using from
  // https://www.shadertoy.com/view/XsyGRW
  //
  // It'll draw out your distance function for you, showing
  // negative distances in a dark orange and positive distances
  // in yellow -> blue.
  gl_FragColor = vec4(draw_distance(dist, uv), 1);
}

