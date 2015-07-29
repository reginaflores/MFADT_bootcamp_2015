PImage myImage;
int pointillize = 10;

void setup(){
  size(625, 417);
  myImage = loadImage("grumpyBunny.jpg");
  background(0);
  smooth();
}

void draw(){
  int x = int(random(myImage.width));
  int y = int(random(myImage.height));
  int loc = x + y*myImage.width;  
  loadPixels();
  float r = red(myImage.pixels[loc]);
  float g = green(myImage.pixels[loc]);
  float b = blue(myImage.pixels[loc]);
  noStroke();
  
  fill(r,g,b,100);
  // ellipse(x,y,pointillize,pointillize);
  rect(x,y,pointillize,pointillize);
}
