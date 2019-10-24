float yoff_1 = 0;
float yoff_2 = 10;

void setup() {
  size(600,600);
  colorMode(1);
  //noStroke();
  
}

void draw() {
  background(250, 250, 220);
  fill(250);
  beginShape(); 
  float xoff = 0;
  for (float x = 0; x <= width; x += 5) {
    float y = map(noise(xoff, yoff_1), 0, 1, 2, 300);
    vertex(x,y);
    xoff += 0.02;
  }
  yoff_1 += 0.005;
  vertex(width, height);
  vertex(0,height);
  endShape(CLOSE);
  
  beginShape(); 
  fill(255, 207, 240);
  float xoff_2 = 0;
  for (float x = 0; x <= width; x += 5) {
    float y = map(noise(xoff_2, yoff_2), 0, 1, 300, 500);
    vertex(x,y);
    xoff_2 += 0.05;
  }
  yoff_2 += 0.005;
  vertex(width, height);
  vertex(0,height);
  endShape(CLOSE);
}
