Star[] stars = new Star[200];
float count = 0;
void setup() {
  size(600,600);
  translate(width/2, height/2);
  for (int i = 0; i < 100; i++) {
    stars[i] = new Star();
  noStroke();
  }
}

void draw() {
  background(0);
  fill(220);
  translate(width/2+150, height/2+150);
  for (int i = 0; i < 100; i++) {
    stars[i].show();
    stars[i].update();
    if (stars[i].z < 0) {
      stars[i].z = random(0,width/2);
      stars[i].x = random(-width/2,width/2);
      stars[i].y = random(-height/2,height/2);
    }
    
  }
  count += TWO_PI / 240;
  
}
