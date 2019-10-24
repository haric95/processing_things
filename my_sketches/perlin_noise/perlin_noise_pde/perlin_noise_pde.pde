float yoff_1 = 0;
float yoff_2 = 10;

void setup() {
  size(600,600);
  colorMode(SUBTRACT);
  
}

void draw() {
  background(240);
  fill(190, 100);
  beginShape(); 
  float xoff = 0;
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff, yoff_1), 0, 1, 2, 500);
    vertex(x,y);
    xoff += 0.05;
  }
  yoff_1 += mouseY / 600;
  vertex(width, height);
  vertex(0,height);
  endShape(CLOSE);
  
  beginShape(); 
  fill(100);
  float xoff_2 = 0;
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff_2, yoff_2), 0, 1, 2, 500);
    vertex(x,y);
    xoff_2 += 0.05;
  }
  yoff_2 += 0.01;
  vertex(width, height);
  vertex(0,height);
  endShape(CLOSE);
  
  
}
  

//float yoff = 0.0;        // 2nd dimension of perlin noise

//void setup() {
//  size(640, 360);
//}

//void draw() {
//  background(51);

//  fill(255);
//  // We are going to draw a polygon out of the wave points
//  beginShape(); 
  
//  float xoff = 0;       // Option #1: 2D Noise
//  // float xoff = yoff; // Option #2: 1D Noise
  
//  // Iterate over horizontal pixels
//  for (float x = 0; x <= width; x += 10) {
//    // Calculate a y value according to noise, map to 
//    float y = map(noise(xoff, yoff), 0, 1, 200,300); // Option #1: 2D Noise
//    // float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
//    // Set the vertex
//    vertex(x, y); 
//    // Increment x dimension for noise
//    xoff += 0.05;
//  }
//  // increment y dimension for noise
//  yoff += 0.01;
//  vertex(width, height);
//  vertex(0, height);
//  endShape(CLOSE);
//}
