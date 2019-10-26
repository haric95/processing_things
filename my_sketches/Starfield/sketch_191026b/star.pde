class Star {
  float x;
  float y;
  float z;
  
  Star() {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(0,width/2);
  }
  void update() {
    z -=3;
  }
  
  void show() {
    float sx = map(x/(z+1),-5,5,-width/2, width/2);
    float sy = map(y/(z+1),-5,5,-height/2, height/2);
    ellipse(sx,sy,((width/2-z)/30),(width/2-z)/30);
  }
  
  
}
