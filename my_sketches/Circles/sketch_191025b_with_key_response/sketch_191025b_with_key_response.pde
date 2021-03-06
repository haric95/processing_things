float inp = 0;

void setup() {
  size(600,600);
  background(250);
  ellipseMode(RADIUS);
  blendMode(SUBTRACT);
}




void draw() {
  background(250);
  for (int i = 0; i < 10; i++) {
    int increase = 0;
      if (key == 's'){
        increase += 2;
      }
      for (int j = 0; j < 10; j++) {
         float distance = dist(300,300, 75 + 50*i, 75  + 50 * j);
        noStroke();
        fill(200-j*30, 40, 100-i*15   + 100*abs(sin(inp/6)));
        ellipse(75 + 50*i  + 10*sin(inp), 75  + 50 * j + 2*sin(inp*2.5), 25 - distance/30*sin(inp)*cos(distance) - 6*sin(inp*3 + i), 25 -  i*50/30*sin(inp)*cos(distance)*cos(inp*3 + j) + increase*2);
        noFill();
        stroke(200-mouseX/100);
        ellipse(70 + 0.02*distance + 50*i, 70 - 0.02*distance  + 50 * j, 25 - distance/30*sin(inp)*cos(distance) - 6*sin(inp*3 + i) + increase*2, 25 -  i*50/30*sin(inp)*cos(distance)*cos(inp*3 + j) );
        
        
      }
  }
  //saveFrame("output/gol_####.png");
  inp += TWO_PI / 250;
}
