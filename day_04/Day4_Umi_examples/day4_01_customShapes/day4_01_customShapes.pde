float x1, y1, x2, y2, x3, y3, x4, y4;

void setup() {
  size(600, 600);
  frameRate(4);
}

void draw() {
  background(255);
  
  curve(5, 26, 5, 26, 73, 24, 73, 61);
  curve(5, 26, 73, 24, 73, 61, 15, 65);
  curve(73, 24, 73, 61, 15, 65, 15, 65);

  arc(150, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
  arc(300, 50, 80, 80, 0, PI+QUARTER_PI, CHORD);
  arc(450, 50, 80, 80, 0, PI+QUARTER_PI, PIE);
  
//  noFill();
//  stroke(255, 102, 0);
//  line(30, 20, 80, 5);
//  line(80, 75, 30, 75);
//  stroke(0, 0, 0);
//  bezier(30, 20,  80, 5,  80, 75,  30, 75);
    
  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  x4 = random(width);
  println(x1, x2, x3, x4);

  y1 = random(height);
  y2 = random(height);
  y3 = random(height);
  y4 = random(height);

  strokeWeight(5);
  beginShape(QUAD_STRIP);
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
  endShape(CLOSE);
  
}
