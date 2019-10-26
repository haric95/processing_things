Star[] stars = new Star[100];

void setup(){
  size(600,600);
  for (int i = 0; i < 100; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < 100; i++){
    translate(width/2, height/2);
    stars[i].show();
    stars[i].update();
  }
}
