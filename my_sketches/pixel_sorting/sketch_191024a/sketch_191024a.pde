PImage img;
PImage sorted;

void setup()
{
  size(400, 265);
  img = loadImage("image_smol.jpg");
  img.loadPixels();
  print(img.pixels[400]);
}
