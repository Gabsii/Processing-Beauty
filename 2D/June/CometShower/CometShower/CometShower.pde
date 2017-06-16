final static int NUM_COMETS = 200;

void setup() {
  size(500, 500);
}

void draw() {
  background(30);

  for (int i = 0; i < NUM_COMETS; i++) {
    drawComet();
  }

  fill(0);
  stroke(255, 20);
  strokeWeight(1);

  ellipseMode(CENTER);
  ellipse(width/2, height/2, 250, 250);
}

void drawComet() {  
  float x = random(0, width);
  float y = random(0, height);
  float len= random(2, 15);

  float maxdist = dist(0, 0, width, height);
  float d = map(dist(x, y, width, height), 0, 2*maxdist, 0, 255);

  stroke(255, d);
  line(x, y, x+len, y+len);
}