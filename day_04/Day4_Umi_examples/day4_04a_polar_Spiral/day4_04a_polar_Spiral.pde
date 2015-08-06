//MAKE A SPIRAL
//Polar coordinates
float r = 0;
float theta = 0;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  
  float x = r * cos(theta);
  float y = r * sin(theta);
  
//  translate(width/2, height/2);
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, y+height/2, 10, 10);
  
  theta += 0.03;
  r += 0.1;
}
