//
// Like before, ensure that the color variables listed
// below match their name.
//
// However, this time use swizzling to do so without
// using `vec3()` constructors anywhere.
//

vec2 sw = vec2(1, 0);

vec3 red = sw.xyy;
vec3 green = sw.yxy;
vec3 blue = sw.yyx;
vec3 cyan = sw.yxx;
vec3 magenta = sw.xyx;
vec3 yellow = sw.xxy;
vec3 white = sw.xxx;

