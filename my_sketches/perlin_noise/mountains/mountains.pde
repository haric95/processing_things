void setup() {
  size(600,600);
  background(230,250,255);
  blendMode(SUBTRACT);
  
  for (int i = 0; i < 10; i++){
    beginShape();
    fill(3,40-i*2,100-i);
    stroke(40);
      float xoff = 0 + i;
      float yoff = 0;
      for (float x = 0; x < width; x += 1){
        float y = map(noise(xoff, yoff), 0, 1, 600-i*30, 300-i*30);
        vertex(x,y);
        xoff += 0.003 + i*0.0003;
      }
      vertex(height, width);
      vertex(0,height);
      endShape(CLOSE);
  }
    
}
