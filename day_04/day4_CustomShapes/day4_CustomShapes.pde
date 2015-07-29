
// This code explores the basics of creating shapes with the
// polygon syntax... 
// It's basically just "beginShape()" and "endShape(CLOSE)" with
//whatever vertices you want in between... lines will then be drawn
//between the vertices in the order they're listed...
//the "(CLOSE)" part of endShape tells Processing to connect the 
//first and last vertex, too.

//To demonstrate this, we'll first create a shape with 4 random vertices.

//Then we'll create one with vertices at regular increments around a circle,
//using sine and cosine,
//to make symmetrical polygons.

float x1, y1, x2, y2, x3, y3, x4, y4;

void setup() {
  size(600, 600);

  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  x4 = random(width);

  y1 = random(height);
  y2 = random(height);
  y3 = random(height);
  y4 = random(height);
}

void draw() {
  background(255);

  strokeWeight(5);
  //to create a shape with random sides:
  beginShape();

  vertex(x1, y1);
  vertex(x2, y2);
  vertex(x3, y3);
  vertex(x4, y4);

  endShape(CLOSE);

  //***OR*** we could do the same thing, but with
  //new random vertices set every frame
  //(instead of setting the random vertices ONCE in the setup loop)

  //beginShape();
  // vertex(random(width),random(height));
  // vertex(random(width),random(height));
  // vertex(random(width),random(height));
  // vertex(random(width),random(height));
  //endShape(CLOSE);


  //To create a regular polygon, we can use sine and cosine...

  //right now this is set to randomly vary the
  //strokeweight and number of sides, creating a
  //sort of "drawn animation" effect. BUT...
  //You can start with just a set strokeweight and 
  //side number to demonstrate:

  int weight = int(random(1, 5));
  strokeWeight(weight);

  //create and set our variables for the polygon:
  float sideIncrement = 0;
  float shapeRadius = width/4;
  int numberOfSides = int(random(10, 20));

  //start the shape:
  beginShape();

  //loops through a range between 0 and 2PI, 
  //i.e. 360 degrees
  while (sideIncrement < TWO_PI) {

    //sets coordinates that are sine and cosine of
    //current increment between 0 and 2PI, creating a 
    //ring of vertexes:
    float xPos = sin(sideIncrement)*shapeRadius;
    float yPos = cos(sideIncrement)*shapeRadius;

    //creates a new vertex at this position,
    //offset to center of screen:
    vertex(xPos+width*0.5, yPos+height*0.5);

    //advances to the next increment at which to draw a vertex
    //(full circle divided by number of sides you want)...
    sideIncrement += TWO_PI/numberOfSides;
  }

  //after all the vertices have been added, close the shape
  endShape(CLOSE);
}
