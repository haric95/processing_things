class Star {
  float x;
  float y;
  float distance;
  
  Star() {
    x = random(0,width/2);
    y = random(0,height/2);
    distance = random(1,3);
  }
  
  void update() {
    distance += 0.1;
  }
  
  void show() {
    fill(255);
    noStroke();
    float sx = x*distance;
    float sy = y*distance;
    ellipse(sx,sy, 8, 8);
  }
  
}
