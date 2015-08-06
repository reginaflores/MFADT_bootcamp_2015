//MAKE A LOADING CIRCLE
//Without using Polar coordinates/changing space, but changing time a.k.a incrementing frameCount

float r = 100;
float speed = 0.05;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * cos(frameCount*speed);
  float y = r * sin(frameCount*speed);
  
//  translate(width/2, height/2);
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, y+height/2, 20, 20);
 
}
