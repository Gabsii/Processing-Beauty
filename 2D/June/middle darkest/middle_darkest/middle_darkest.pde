float maxDist;
int[] arr;

void setup() {
  size(640, 640);
  maxDist = dist(0, 0, width/2, height/2);
  int arrlen = (width/20);
  arr= new int[arrlen];
}

void draw() {
  background(20);
  stroke(0);

  for (int y = 0; y < height; y+=20) {
    int a = 0;
    for (int x = 0; x < width; x +=20) {
      rect(x, y, 20, 20);
      float filling = map(dist(x, y, width/2, height/2), 0, maxDist, 0, 255);
      fill(filling);

      if (y==200) {
        arr[a] = (int) filling;
        a++;
      }
    }
  }
  for (int i = 0; i<arr.length; i++) {
    println(i + ": " + arr[i]);
  }
  stop();
}