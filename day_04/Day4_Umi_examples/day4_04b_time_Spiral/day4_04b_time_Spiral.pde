//MAKE A SPIRAL
//using frameCount

float r = 0;
float speed = 0.03;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  
  float x = r * cos(frameCount * speed);
  float y = r * sin(frameCount * speed);
  
//  translate(width/2, height/2);
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, y+height/2, 10, 10);
  
  r += 0.1;
}
