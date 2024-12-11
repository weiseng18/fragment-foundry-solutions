mat2 rot(float a) {
 	return mat2(cos(a),-sin(a),sin(a),cos(a)); 
}

float getDistanceFromPoint(vec3 p) {
  vec3 offset = vec3(0.75, 0, 0) * abs(sin(iGlobalTime * 0.1));
  float radius = 0.1;
  
  // need rotational symmetry, so calculate angle
  float reps = 5.0;
  float deltaAngle = 6.28318 / reps;
  float angle = atan(p.z, p.x);
  float id = floor(angle / deltaAngle);
  
  float a1 = deltaAngle * id;
  float a2 = a1 + deltaAngle;
  
  vec2 r1 = rot(a1) * vec2(p.x, p.z);
  vec2 r2 = rot(a2) * vec2(p.x, p.z);
  
  vec3 v1 = vec3(r1.x, p.y, r1.y);
  vec3 v2 = vec3(r2.x, p.y, r2.y);
  
  float s1 = length(v1 - offset) - radius;
  float s2 = length(v2 - offset) - radius;
  
  return min(s1, s2);
}

