
//This is just a modification of one of the examples in the Processing libraries.

//It uses arcs and sine/cosine to create a weird thing... 
//But only do something like this if there's time. 
//(You could also integrate into other sketches.)

/**
 * Pie Chart  
 * 
 * Uses the arc() function to generate a pie chart from the data
 * stored in an array. 
 */

// Have we gotten to arrays by this point?
int[] angles = { 
  30, 10, 45, 35, 60, 38, 75, 67
};

float step = 0;

void setup() {
  size(640, 360);
  noStroke();
  frameRate(30);
}

void draw() {
  background(150,200,225);
  pieChart(300, angles, step);
}

void pieChart(float diameter, int[] data, float _step) {
  float lastAngle = 0;

  
    for (int i = 0; i < data.length; i++) {
      for (int j = 20; j < diameter; j+=20) {
      float gray = map(i, 0, data.length, 0, 255);

      strokeWeight(5);
      noFill();


      int limit = int(width*0.25);

      if (j < abs(sin(frameCount*0.05)*diameter)) {
        stroke(gray, 225, 225);
      } else {
        stroke(gray, 150, 150);
      }
      println(sin(frameCount)*diameter);
      arc(width*0.5, height*0.5, j, j, lastAngle+radians(step), lastAngle+radians(step)+radians(angles[i])-radians(5));

      lastAngle += radians(angles[i]);
    }
  }
  step+=1;
}
