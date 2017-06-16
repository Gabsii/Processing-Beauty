class Drop {

  float x;
  float y;
  float len;
  float yspeed = random(0,5);

  Drop() {
    x = random(0, width);
    y = random(0, height);
    len = random(1, 20);
  }

  void display() {
    stroke(255, 50);
    strokeWeight(2);
    line(x, y, x, y + len);
    //println("y: " + y);
  }  

  void fall() {
    y += yspeed;
    //println(yspeed);
    
    if (y > height) {
      y = 1;
    }
  }
}