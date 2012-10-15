int W = 800;
int H = 600;
int pHSize = H/4; 

PShape planeX, planeY, planeZ;

void setup() {
  size(W, H, P3D);
  background(0);
  smooth();
  
  translate(width/2,height/2);
  rotateY(PI/4);
  rotateZ(PI/4);
  
  planeX = genPlaneX();
  planeY = genPlaneY();
  planeZ = genPlaneZ();
  
  shape(planeX);
  shape(planeY);
  shape(planeZ);
  
  
  
}

void draw() {
}


PShape genPlaneX() {
  PShape p = createShape(QUADS);
  color c = #FF0000;
  p.fill(c, 64);
  p.stroke(c);
  p.vertex(0, -pHSize, -pHSize);
  p.vertex(0, -pHSize,  pHSize);
  p.vertex(0,  pHSize,  pHSize);
  p.vertex(0,  pHSize, -pHSize);
  p.end(CLOSE);

  return p;
}

PShape genPlaneY() {
  PShape p = createShape(QUADS);
  color c = #00FF00;
  p.fill(c, 64);
  p.stroke(c);
  p.vertex(-pHSize, 0, -pHSize);
  p.vertex(-pHSize, 0,  pHSize);
  p.vertex( pHSize, 0,  pHSize);
  p.vertex( pHSize, 0, -pHSize);
  p.end(CLOSE);

  return p;
}

PShape genPlaneZ() {
  PShape p = createShape(QUADS);
  color c = #0000FF;
  p.fill(c, 64);
  p.stroke(c);
  p.vertex(-pHSize, -pHSize, 0);
  p.vertex(-pHSize,  pHSize, 0);
  p.vertex( pHSize,  pHSize, 0);
  p.vertex( pHSize, -pHSize, 0);
  p.end(CLOSE);

  return p;
}

