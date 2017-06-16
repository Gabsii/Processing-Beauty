int a = 1; 
int b = 1;
int c = 1;
final static int NUM_CIRCLES = 10;

void setup() {
  size(400, 400);
}

void draw() {
  background(20);
  float alpha = map(dist(0, 0, a, b), 0, 500, 255, 0);
  stroke(255, alpha);
  strokeWeight(2);
  noFill();

  translate(width/2, height/2);

  makeEllipse();

  if (a > width+100 || b > height+100) {
    a=1;
    b=1;
  }
}

void makeEllipse() {
  ellipseMode(CENTER);

  for (int i = 0; i < NUM_CIRCLES; i++) {
    ellipse(0, 0, a+i*10, b+i*10);
  }
  float d = map(dist(0, 0, a, b), 0, 500, 2, 10);
  a+=d;
  b+=d;
}